/// The log type to be used.
enum LogAnalyticsLogType {
  valueContainerInsights("ContainerInsights"),
  valueContainerInstanceLogs("ContainerInstanceLogs");

  const LogAnalyticsLogType(this.wireValue);
  final String wireValue;

  static LogAnalyticsLogType fromValue(String value) {
    for (final item in LogAnalyticsLogType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogAnalyticsLogType value: $value');
  }
}

