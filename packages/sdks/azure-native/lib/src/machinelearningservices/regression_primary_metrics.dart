/// Primary metric for regression task.
enum RegressionPrimaryMetrics {
  valueSpearmanCorrelation("SpearmanCorrelation"),
  valueNormalizedRootMeanSquaredError("NormalizedRootMeanSquaredError"),
  valueR2Score("R2Score"),
  valueNormalizedMeanAbsoluteError("NormalizedMeanAbsoluteError");

  const RegressionPrimaryMetrics(this.wireValue);
  final String wireValue;

  static RegressionPrimaryMetrics fromValue(String value) {
    for (final item in RegressionPrimaryMetrics.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegressionPrimaryMetrics value: $value');
  }
}
