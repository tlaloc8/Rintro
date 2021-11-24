#Welcome to R. Welcome Students

install.packages("dplyr")   #Install "dplyr"
library("dplyr")            #upload "dplyr"
installed.packages()        #list paqueges in R


install.packages("dplyr")   #Install
install.packages("readxl")   #Install 
install.packages("ggplot2")   #Install 
install.packages("haven")   #Install

getwd() #actual work direction
setwd("C:/Users/dell/Desktop") #set new working directory

#Comment a code
hi<-3   #Sensible for small letter
Hi<-4   #Sensible for capital letter 
4+5;4+2   #separations

#Assignment of values to objects
value1<- 1                       #value1 is an object of number type
value2<- "a"                     #value2 is an alphanumeric object (character)
value3<- function(x){return(x*x)}   #value3 is an object of the function type

value1
value2
value3

ls()    #list all objects stored in memory
rm()    #removes all stored objects from memory

#Functions in R
function1<- function(x){         #the "function" instruction defines a function in R
  value<-x+1                    #instruction
  return(value)                 #with return () the final value of the function is set
}

function1(5)                  #Check the final value 
#Activity 
flower<-function(x,y){
  value<-sqrt(x+y)
  return(value)
}
flower(5,4)


var1<- 5      # numerical data 
var2<- "czesc" #chain type data 
var2<- czesc   #wrong written 

class(var2)   #function that allows us to see what kind of object it is

#vector

vec1<-c(2,2,3)              #Vector with numerical elements 
vec2<-c("abc","a","kkd3")   #Vector with non numerical elements 
vec3<-c("hola",2)
class(vec1)
class(vec2)
class(vec3)

vec1;vec2;vec3

length(vec1)                #the length of the vector

vec4<-c(flower,2)         
class(vec4)                 #what it will be?

c(2,3,2) + c(2,1,1)         #sum  
c(2,3,2) + c(2,3)           #Incorrect input sum
c(2,3,2) + 1                #Sum of vectors

repet<- rep(5,9)         #Function that repeats 5 nine times
sequence <- seq(1,10,2.3)    #Function that generates a sequence from 1 to 10 with jumps of 2.3 units
vector1<- seq(13,20,1)      #sequential vector from 13 to 20

subvec1<-vector1[4]                   #get the value of input 4
subvec2<-vector1[seq(1,4)]            #get the value of input from 1 to 4
subvec2<-vector1[c(1,4)]              #get the value of input 1 and 4
subvec2<-vector1[vector1>15]          #get the value of input more than 15

#Put names on vectors
vecnom<-c("a"=1,"b"=2,"c"=3)          
names(vecnom)                         #Function that gives the names
names(vecnom)<-c("ab","cd","ef")      #is it possible to change the names 

vecnom["ab"]

v1<-c(5,3)
#LIST 
lista1<- list(v1,c(1,4,15),FALSE,c("X","A","a"))

mary_info <- list(classes=c("Biology","Math","Music", "Physics"),
                  friends=c("John","Dan","Emily"),
                  SAT=1450)

mary_info[[2]]        #Llamar con doble corchete
mary_info$classes[2]  #En caso de tener nombre asignado, usar nombre de la entrada

#MATRIX
matrix1<-matrix(data=c(1,2,3,4),2,2)                #matrix 2x2 for column
matrix2<-matrix(data=c(1,2,3,4),2,2, byrow = TRUE)  #matriz 2x2 for row

matrix2[1,2]          #element at first row, 2nd column
matrix2[1:2,1]        #1st row from 1 to 2 and 1st column 
matrix2[,1]        #the 1st column  
matrix2[1,]        #the 1st row 

matrix3<-matrix(data=1:9,3,3) 
matrix2[1:2,1:2]        #consultamos la submatriz [1:2,1:2] 

A<-matrix(c(2,4,3,1,5,7), nrow=2, ncol=3,byrow = TRUE)        
A

#DATAFRAME
dataframe1<-data.frame(person=c("Juan","Peter"),age=c(45,20),weight=c(75,80),studies=c(TRUE,FALSE))
class(dataframe1)
class(dataframe1$age)
class(dataframe1$person)
class(dataframe1$studies)

dataframe1[2,3]               #get 2nd row, 3rd column
dataframe1[2,"weight"]        #get 2nd row, "weight" column
dataframe1[1:2,"age"]        #get from 1st to 2nd row, column age
dataframe1[,"age"]           #get the column "age"
dataframe1[["age"]]           #get the column "age"

dataframe1[,c("person","age")]          #get the column "person" and "age"

rownames(dataframe1)<-paste0("Polish",seq(1,2))   #you can assign names to the rows
dataframe1["Polish1",]                            #the row named "Polish1" is extracted


dataframe1[dataframe1$person=="Juan",]            #get the row which value is a person "Juan"

#Change the names of the columns 
colnames(dataframe1)<-c("nombre","edad","peso","estudios")
colnames(dataframe1)[1]<-"persona"

dim(dataframe1)
str(dataframe1)

summary(dataframe1)             #summary
summary.data.frame(dataframe1)  #summary.data.frame


#Generar datos sin el nombre de variable person
dataframe2<-dataframe1[,-grep ("person",colnames(dataframe1))]

#Example with cars 
data(cars)                        #data() call data.frame which is built inside R
summary(lm(dist~speed,data=cars)) #summary for the linear regression
summary.lm (lm(dist~speed,data=cars))  #summary specific function

class(lm(dist~speed,data=cars))

s <- list(name = "John", age = 21, GPA = 3.5)
class(s)
class(s) <- "student"

methods("summary")            #all funccions specifics of the "summary"

is.na(dataframe1)             #example of methods() 

#IMPORT DATA 
getwd()

data("USArrests")
data("USArrests")

Basecsv<-read.csv("USArrests1.csv") #Read in the format of csv
Basecsv$NewVariable<-1              # Decleration of the new variable in Basecsv

#Import from the URL 
Basecsv2<-read.csv("https://stats.idre.ucla.edu/stat/data/hsbdemo.csv")
class(Basecsv2)

#Import database with function read_csv 
Basecsv2.1<-read_csv("https://stats.idre.ucla.edu/stat/data/hsbdemo.csv")
class(Basecsv2.1)
Basecsv2.1<-as.data.frame(Basecsv2.1)   #Dataframe archive
class(Basecsv2.1)
hist(USArrests$Rape)
boxplot(USArrests$Assault)
stars(USArrests)
faces(USArrests, face.type = 2)
faces(USArrests, face.type = 1)
#USArrests
data(murder)
USArrests$Assault[5]<-NA #declare California NA
mean(USArrests$Assault)
mean(USArrests$Assault, na.rm = TRUE) #mean when one of data is NA
median(USArrests$Assault, na.rm = TRUE) #median when one of data is NA
var(USArrests$Assault, na.rm = TRUE) #var when one of data is NA
sd(USArrests$Assault, na.rm = TRUE) #sd when one of data is NA
