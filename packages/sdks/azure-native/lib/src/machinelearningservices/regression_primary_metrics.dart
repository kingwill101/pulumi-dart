import 'package:pulumi/pulumi.dart' as pulumi;

/// Primary metrics for Regression task.
enum RegressionPrimaryMetrics implements pulumi.PulumiEnum<String> {
  spearmanCorrelation("SpearmanCorrelation"),
  normalizedRootMeanSquaredError("NormalizedRootMeanSquaredError"),
  r2Score("R2Score"),
  normalizedMeanAbsoluteError("NormalizedMeanAbsoluteError");

  const RegressionPrimaryMetrics(this.wireValue);
  @override
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
