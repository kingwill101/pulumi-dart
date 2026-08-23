/// Primary metrics for Regression task.
enum RegressionPrimaryMetrics {
  spearmanCorrelation("SpearmanCorrelation"),
  normalizedRootMeanSquaredError("NormalizedRootMeanSquaredError"),
  r2Score("R2Score"),
  normalizedMeanAbsoluteError("NormalizedMeanAbsoluteError");

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
