import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum OperationLevelMetricsConfig implements pulumi.PulumiEnum<String> {
  dISABLED("DISABLED"),
  eNABLED("ENABLED");

  const OperationLevelMetricsConfig(this.wireValue);
  @override
  final String wireValue;

  static OperationLevelMetricsConfig fromValue(String value) {
    for (final item in OperationLevelMetricsConfig.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperationLevelMetricsConfig value: $value');
  }
}
