/// Logger type.
enum LoggerType {
  valueAzureEventHub("azureEventHub"),
  valueApplicationInsights("applicationInsights"),
  valueAzureMonitor("azureMonitor");

  const LoggerType(this.wireValue);
  final String wireValue;

  static LoggerType fromValue(String value) {
    for (final item in LoggerType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggerType value: $value');
  }
}

