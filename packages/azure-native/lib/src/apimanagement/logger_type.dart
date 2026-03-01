/// Logger type.
enum LoggerType {
  valueAzureEventHub("azureEventHub"),
  valueApplicationInsights("applicationInsights"),
  valueAzureMonitor("azureMonitor");

  const LoggerType(this.value);
  final String value;

  static LoggerType fromValue(String value) {
    for (final item in LoggerType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggerType value: $value');
  }
}

