/// Property value
enum LogsConfigStatusType {
  dISABLED("DISABLED"),
  eNABLED("ENABLED");

  const LogsConfigStatusType(this.wireValue);
  final String wireValue;

  static LogsConfigStatusType fromValue(String value) {
    for (final item in LogsConfigStatusType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogsConfigStatusType value: $value');
  }
}
