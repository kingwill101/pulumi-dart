/// Primary metric for forecasting task.
enum ForecastingPrimaryMetrics {
  valueSpearmanCorrelation("SpearmanCorrelation"),
  valueNormalizedRootMeanSquaredError("NormalizedRootMeanSquaredError"),
  valueR2Score("R2Score"),
  valueNormalizedMeanAbsoluteError("NormalizedMeanAbsoluteError");

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

