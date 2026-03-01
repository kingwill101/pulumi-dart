/// The log type to be used.
enum LogAnalyticsLogType {
  valueContainerInsights("ContainerInsights"),
  valueContainerInstanceLogs("ContainerInstanceLogs");

  const LogAnalyticsLogType(this.value);
  final String value;

  static LogAnalyticsLogType fromValue(String value) {
    for (final item in LogAnalyticsLogType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogAnalyticsLogType value: $value');
  }
}

