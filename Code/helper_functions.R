load_all_packages <- function(vector){
  for (i in vector) {
    if (!requireNamespace(i, quietly = TRUE)){
      install.packages(i)
    }
    library(i,character.only=T)
  }
  
  install_github("AppliedDataSciencePartners/xgboostExplainer")
  library(xgboostExplainer) # Load XGboost Explainer
  
}

is.nan.data.frame <- function(x)
  do.call(cbind, lapply(x, is.nan))

