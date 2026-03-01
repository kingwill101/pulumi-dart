/// Primary metric for regression task.
enum RegressionPrimaryMetrics {
  valueSpearmanCorrelation("SpearmanCorrelation"),
  valueNormalizedRootMeanSquaredError("NormalizedRootMeanSquaredError"),
  valueR2Score("R2Score"),
  valueNormalizedMeanAbsoluteError("NormalizedMeanAbsoluteError");

  const RegressionPrimaryMetrics(this.value);
  final String value;

  static RegressionPrimaryMetrics fromValue(String value) {
    for (final item in RegressionPrimaryMetrics.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegressionPrimaryMetrics value: $value');
  }
}

