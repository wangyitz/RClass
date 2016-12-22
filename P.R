setwd("c:/")
X <- read.table("Age_County_Gender_061.csv",sep=",",header=TRUE,encoding="ANSI")
X

library(ggplot2)

Y <- tapply(as.numeric(X[,9]),X[,8],sum)

Z <- data.frame(template=names(Y),sum=Y)

names(Z) <- c("年齡層","總病例數")

ggplot(Z, aes(x=年齡層, y=總病例數, width=0.4)) + geom_bar(stat="identity", position="identity")


