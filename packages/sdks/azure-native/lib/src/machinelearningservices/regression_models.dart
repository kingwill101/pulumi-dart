/// Enum for all Regression models supported by AutoML.
enum RegressionModels {
  elasticNet("ElasticNet"),
  gradientBoosting("GradientBoosting"),
  decisionTree("DecisionTree"),
  kNN("KNN"),
  lassoLars("LassoLars"),
  sGD("SGD"),
  randomForest("RandomForest"),
  extremeRandomTrees("ExtremeRandomTrees"),
  lightGBM("LightGBM"),
  xGBoostRegressor("XGBoostRegressor");

  const RegressionModels(this.wireValue);
  final String wireValue;

  static RegressionModels fromValue(String value) {
    for (final item in RegressionModels.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegressionModels value: $value');
  }
}
