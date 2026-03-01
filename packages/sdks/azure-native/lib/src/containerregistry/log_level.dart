/// The verbosity of logs persisted on the connected registry.
enum LogLevel {
  valueDebug("Debug"),
  valueInformation("Information"),
  valueWarning("Warning"),
  valueError("Error"),
  valueNone("None");

  const LogLevel(this.value);
  final String value;

  static LogLevel fromValue(String value) {
    for (final item in LogLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogLevel value: $value');
  }
}

