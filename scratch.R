library(tidyverse)
library(stringr)

build_file <- function(x){
  x <- str_to_lower(x)
  x <- str_replace(x, "-", "")
  paste("elections-poll-", x, ".csv", sep = "")
}


build_link_2 <- function(district, wave){
  district <- str_to_lower(district)
  district <- str_replace(district, "-", "")
  paste("https://github.com/TheUpshot/2018-live-poll-results/tree/master/data/elections-poll-", district, 
        "-", wave, ".csv", sep = "")
}
