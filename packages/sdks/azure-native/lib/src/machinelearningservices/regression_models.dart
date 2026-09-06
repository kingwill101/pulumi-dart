import 'package:pulumi/pulumi.dart' as pulumi;

/// Enum for all Regression models supported by AutoML.
enum RegressionModels implements pulumi.PulumiEnum<String> {
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
  @override
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
