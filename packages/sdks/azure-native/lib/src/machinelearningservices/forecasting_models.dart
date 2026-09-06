import 'package:pulumi/pulumi.dart' as pulumi;

/// Enum for all forecasting models supported by AutoML.
enum ForecastingModels implements pulumi.PulumiEnum<String> {
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
  @override
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
