/// Property value
enum OperationLevelMetricsConfig {
  dISABLED("DISABLED"),
  eNABLED("ENABLED");

  const OperationLevelMetricsConfig(this.wireValue);
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

