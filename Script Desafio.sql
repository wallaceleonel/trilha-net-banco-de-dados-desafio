-- ==============================
-- CONSULTAS DO DESAFIO - DIO .NET
-- BANCO DE DADOS: Filmes
-- ==============================

-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano
FROM Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;

-- 3 - Buscar pelo filme "De Volta Para o Futuro", trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta Para o Futuro';

-- 4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano
FROM Filmes
WHERE Ano = 1997;

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano
FROM Filmes
WHERE Ano > 2000;

-- 6 - Buscar os filmes com duração maior que 100 e menor que 150, ordenando pela duração crescente
SELECT Nome, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- 7 - Buscar a quantidade de filmes lançados no ano, agrupando por ano, ordenando pelo ano decrescente
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Ano DESC;

-- 8 - Buscar os Atores do gênero masculino
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- 10 - Buscar o nome do filme e o gênero
SELECT F.Nome AS Filme, G.Nome AS Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT F.Nome AS Filme, G.Nome AS Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Nome = 'Mistério';

-- 12 - Buscar o nome do filme e os atores (PrimeiroNome, UltimoNome e Papel)
SELECT F.Nome AS Filme, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes F
JOIN ElencoFilme EF ON F.Id = EF.IdFilme
JOIN Atores A ON EF.IdAtor = A.Id;
