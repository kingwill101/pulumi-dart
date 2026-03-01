/// Enum for all forecasting models supported by AutoML.
enum ForecastingModels {
  valueAutoArima("AutoArima"),
  valueProphet("Prophet"),
  valueNaive("Naive"),
  valueSeasonalNaive("SeasonalNaive"),
  valueAverage("Average"),
  valueSeasonalAverage("SeasonalAverage"),
  valueExponentialSmoothing("ExponentialSmoothing"),
  valueArimax("Arimax"),
  valueTCNForecaster("TCNForecaster"),
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

  const ForecastingModels(this.value);
  final String value;

  static ForecastingModels fromValue(String value) {
    for (final item in ForecastingModels.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForecastingModels value: $value');
  }
}

