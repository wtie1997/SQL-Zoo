/*
We continue practicing simple SQL queries on a single table.

This tutorial is concerned with a table of Nobel prize winners:

nobel(yr, subject, winner)
*/

--#1
/*
Change the query shown so that it displays Nobel prizes for 1950. 
*/
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

--#2
/*
Show who won the 1962 prize for Literature. 
*/
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

--#3
/*
Show the year and subject that won 'Albert Einstein' his prize. 
*/
Select yr, subject
From nobel
Where winner = 'Albert Einstein'

--#4
/*
Give the name of the 'Peace' winners since the year 2000, including 2000. 
*/
Select winner
From nobel
Where subject = 'Peace'
And yr >= 2000

--#5
/*
Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive. 
*/
Select *
From nobel
Where subject = 'Literature'
And yr >= 1980
And yr <= 1989

--#6
/*
Show all details of the presidential winners:

    Theodore Roosevelt
    Woodrow Wilson
    Jimmy Carter
    Barack Obama
*/
SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter', 'Barack Obama')

--#7
/*
Show the winners with first name John 
*/
Select winner
From nobel
Where winner Like 'John%'

--#8
/*
Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.
*/
Select *
From nobel
Where (subject = 'Physics' And yr = 1980)
OR (subject = 'Chemistry' And yr = 1984)

--#9
/*
Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine 
*/
Select *
From nobel
Where yr = 1980
And subject NOT IN ('Chemistry', 'Medicine')

--#10
/*
Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) together with winners of a 'Literature' prize in a later year (after 2004, including 2004) 
*/
Select *
From nobel
Where (subject = 'Medicine' And yr < 1910)
OR (subject = 'Literature' And yr >= 2004)

--#11
/*
Find all details of the prize won by PETER GRÜNBERG 
*/
Select * 
From nobel
Where winner = 'PETER GRÜNBERG'

--#12
/*
Find all details of the prize won by EUGENE O'NEILL 
*/
Select * 
From nobel
Where winner = 'EUGENE O''NEILL'

--#13
/*
Knights in order

List the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.
*/
Select winner, yr, subject
From nobel
Where winner LIKE 'Sir%'
Order by yr desc, winner

--#14
/*
The expression subject IN ('Chemistry','Physics') can be used as a value - it will be 0 or 1.

Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.
*/
SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'), subject,winner
 
