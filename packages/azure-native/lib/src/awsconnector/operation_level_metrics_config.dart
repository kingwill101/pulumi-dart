/// Property value
enum OperationLevelMetricsConfig {
  dISABLED("DISABLED"),
  eNABLED("ENABLED");

  const OperationLevelMetricsConfig(this.value);
  final String value;

  static OperationLevelMetricsConfig fromValue(String value) {
    for (final item in OperationLevelMetricsConfig.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperationLevelMetricsConfig value: $value');
  }
}

