/// Enum for all Regression models supported by AutoML.
enum RegressionModels {
  valueElasticNet("ElasticNet"),
  valueGradientBoosting("GradientBoosting"),
  valueDecisionTree("DecisionTree"),
  valueKNN("KNN"),
  valueLassoLars("LassoLars"),
  valueSGD("SGD"),
  valueRandomForest("RandomForest"),
  valueExtremeRandomTrees("ExtremeRandomTrees"),
  valueLightGBM("LightGBM"),
  valueXGBoostRegressor("XGBoostRegressor");

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

