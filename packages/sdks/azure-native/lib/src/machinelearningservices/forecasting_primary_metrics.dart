import 'package:pulumi/pulumi.dart' as pulumi;

/// Primary metrics for Forecasting task.
enum ForecastingPrimaryMetrics implements pulumi.PulumiEnum<String> {
  spearmanCorrelation("SpearmanCorrelation"),
  normalizedRootMeanSquaredError("NormalizedRootMeanSquaredError"),
  r2Score("R2Score"),
  normalizedMeanAbsoluteError("NormalizedMeanAbsoluteError");

  const ForecastingPrimaryMetrics(this.wireValue);
  @override
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
