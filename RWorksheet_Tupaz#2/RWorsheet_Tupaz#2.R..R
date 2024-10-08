1
#1.a
vector_1 <- -5:5
vector_1

#1.b
x <- 1:7
x

2
vector_2 <- seq(1, 3, by=0.2)
vector_2

3
ages <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 
          27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 
          17, 37, 43, 53, 41, 51, 35, 24, 33, 41, 53, 40, 
          18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 
          26, 18)

#3.a
ages[3]

#3.b
ages[c(2, 4)]

#3.c
ages[-c(4, 12)]

4
x <- c("first"=3, "second"=0, "third"=9)

#4.a
x[c("first", "third")]

#4.b
names(x)

5
x <- -3:2

#5.a
x[2] <- 0
x

6
#6.a
cruz_data <- data.frame(
  Month = c("Jan", "Feb", "March", "Apr", "May", "June"),
  Price_per_liter = c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00),
  Purchase_quantity = c(25, 30, 40, 50, 10, 45)
)
cruz_data


#6.b


cruz_data$Total_expenditure <- cruz_data$Price_per_liter * cruz_data$Purchase_quantity

average_expenditure <- weighted.mean(cruz_data$Total_expenditure, cruz_data$Purchase_quantity)

average_expenditure

7
data("rivers")
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers),
          var(rivers), sd(rivers), min(rivers), max(rivers))
data


8
#8.a
power_ranking <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
                   14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25)
celebrity_name <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", 
                    "U2", "Tiger Woods", "Steven Spielberg", 
                    "Howard Stern", "50 Cent", "Cast of the Sopranos", 
                    "Dan Brown", "Bruce Springsteen", "Donald Trump", 
                    "Muhammad Ali", "Paul McCartney", "George Lucas", 
                    "Elton John", "David Letterman", "Phil Mickelson", 
                    "J.K Rowling", "Bradd Pitt", "Peter Jackson", "Dr. 
                    Phil McGraw", "Jay Lenon", "Celine Dion", 
                    "Kobe Bryant")
pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 
         55, 40, 233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31)

print(power_ranking)
print(celebrity_name)
print(pay)


#8.b
power_ranking[19] <- 15
pay[19] <- 90

print(power_ranking)
print(pay)


#8.c
power_ranking_data <- data.frame(power_ranking, celebrity_name, pay)
write.csv(power_ranking_data, "PowerRanking.csv", row.names = FALSE)
power_ranking_data <- read.csv("PowerRanking.csv")
print(power_ranking_data)



#8.d
power_ranking_data <- read.csv("PowerRanking.csv")
ranks_data <- power_ranking_data[10:20, ]
print(ranks_data)
save(ranks_data, file = "Ranks.RData")



9


install.packages("readxl")

library(readxl)

9
#9.a
file_path <- "C:/Users/ASITSD/Downloads/hotels-vienna.xlsx"

hotels_data <- read_excel(file_path)

print(hotels_data)

#9.b
dim(hotels_data)


#9.c
library(dplyr)
selected_data <- select(hotels_data, country, neighbourhood, 
                        price, stars, accommodation_type, rating)
head(selected_data)


#9.d
save(selected_data, file = "new.RData")

#9.e
load("new.RData")
head(selected_data)
tail(selected_data)

10
vegetable_list <- c("Lettuce", "Potato", "Cabbage", "Eggplant", "Spinach", "Bittergour",
                    "Cucumbers","Bell Peppers", "Lady Finger", "Mushrooms")
print(vegetable_list)

#10.b
vegetable_list <- c(vegetable_list, "Spinach", "Brocolli")

print(vegetable_list)

#10.c
vegetable_list <- c(vegetable_list[1:5], "Tomato", "Ginger", 
                    "Carrot", "Corn", vegetable_list[6:12])
print(vegetable_list)


#10.d
vegetable_list <- vegetable_list[-c(5, 10, 15)]

print(vegetable_list)






