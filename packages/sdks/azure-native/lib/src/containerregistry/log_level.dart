/// The verbosity of logs persisted on the connected registry.
enum LogLevel {
  valueDebug("Debug"),
  valueInformation("Information"),
  valueWarning("Warning"),
  valueError("Error"),
  valueNone("None");

  const LogLevel(this.wireValue);
  final String wireValue;

  static LogLevel fromValue(String value) {
    for (final item in LogLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogLevel value: $value');
  }
}
