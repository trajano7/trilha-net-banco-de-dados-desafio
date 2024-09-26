-- 1
SELECT nome, ano 
FROM Filmes;

-- 2
SELECT *
FROM Filmes
ORDER BY ano;

-- 3
SELECT *
FROM Filmes
WHERE nome = 'De Volta para o Futuro';

-- 4
SELECT * 
FROM Filmes
WHERE ano = 1997;

-- 5
SELECT * 
FROM Filmes
WHERE ano > 2000;

-- 6
SELECT *
FROM Filmes
WHERE duracao > 100
ORDER BY duracao;

-- 7
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8
SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M';

-- 9
SELECT PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- 10
SELECT f.Nome, g.Genero
FROM Filmes f 
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;

-- 11
SELECT f.Nome, g.Genero
FROM Filmes f 
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

-- 12
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Atores a
JOIN ElencoFilme ef ON a.Id = ef.IdAtor
JOIN Filmes f ON f.Id = ef.IdFilme;
