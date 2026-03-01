/// Property value
enum LogsConfigStatusType {
  dISABLED("DISABLED"),
  eNABLED("ENABLED");

  const LogsConfigStatusType(this.value);
  final String value;

  static LogsConfigStatusType fromValue(String value) {
    for (final item in LogsConfigStatusType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogsConfigStatusType value: $value');
  }
}

