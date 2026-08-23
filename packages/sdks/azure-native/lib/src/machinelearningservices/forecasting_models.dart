/// Enum for all forecasting models supported by AutoML.
enum ForecastingModels {
  autoArima("AutoArima"),
  prophet("Prophet"),
  naive("Naive"),
  seasonalNaive("SeasonalNaive"),
  average("Average"),
  seasonalAverage("SeasonalAverage"),
  exponentialSmoothing("ExponentialSmoothing"),
  arimax("Arimax"),
  tCNForecaster("TCNForecaster"),
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

  const ForecastingModels(this.wireValue);
  final String wireValue;

  static ForecastingModels fromValue(String value) {
    for (final item in ForecastingModels.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForecastingModels value: $value');
  }
}
