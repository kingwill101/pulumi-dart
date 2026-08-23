/// Primary metrics for Forecasting task.
enum ForecastingPrimaryMetrics {
  spearmanCorrelation("SpearmanCorrelation"),
  normalizedRootMeanSquaredError("NormalizedRootMeanSquaredError"),
  r2Score("R2Score"),
  normalizedMeanAbsoluteError("NormalizedMeanAbsoluteError");

  const ForecastingPrimaryMetrics(this.wireValue);
  final String wireValue;

  static ForecastingPrimaryMetrics fromValue(String value) {
    for (final item in ForecastingPrimaryMetrics.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForecastingPrimaryMetrics value: $value');
  }
}
