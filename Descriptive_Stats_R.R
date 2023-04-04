#Read the csv file
df <- datasets::airquality
View(df)


####Top 10 rows and last 10 rows[6]
head(df)
head(df,10)

tail(df)
tail(df,10)

#Extract records from 5 to 25 and from 1 to 5 columns
df[10:15,]
df[c(18,20),1]
df[c(18,25),]
df[25:40,c(1,4)]


#####Columns
df$Month
df$Solar.R

df$ozone
df$Ozone
#Wind and Day


###########Summary of the data#########[5]
summary(df)
summary(df$Ozone)

summary(Ozone)
attach(df)
summary(Ozone)
detach(df)

###########DATA VISUALIZATION IN R##########[5]



# points and lines[5]
plot(Ozone,Temp)
plot(Ozone,Solar.R,col = 'red',type = 'b')
plot(Ozone,Temp,xlab = 'Ozone Levels',ylab = 'Temperature',
     main = 'Scatter Plot')



# Horizontal bar plot[2]
barplot(Month)
a = c(10,12,52,32)
names = c('a','b','c','d')
barplot(a,names.arg = names)
table(Month)
freq = c(31,30,30,30,31)
month = c(5,6,7,8,9)
barplot(freq,names.arg = month, xlab = 'Months',
        ylab = 'Frequency',main = 'Barplot',col = c('red','yellow'))


#Histogram[2]
hist(Ozone)
hist(Temp)


#Single box plot and stats[5]
boxplot(Ozone,notch = TRUE)
boxplot(Temp)
boxplot(Ozone)$stats
boxplot(Ozone)$out
summary(Ozone)

# Multiple box plots
boxplot(df, col = c('yellow','red','grey','darkred'))
summary(df)


#par function
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
par(mar = c(2,2,2,2), mfrow = c(2,2))
plot(Ozone,Temp,col = 'green')
hist(Ozone,col = 'grey')
boxplot(Solar.R)

#Plot the entire dataset
plot(df)


#sd
sd(Ozone,na.rm = T)
mean(Ozone,na.rm = T)

#var
var(Ozone,na.rm = T)


#skewness
skewness(Ozone,na.rm = T)
install.packages('moments')
library(moments)
mode(Month)

#kurtosis

kurtosis(Temp)

library(modeest)

mfv(Month)



##In class activity
e_quakes<-datasets::quakes

data <- datasets::quakes
View(data)








