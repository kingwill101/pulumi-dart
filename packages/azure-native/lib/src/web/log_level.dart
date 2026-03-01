/// Log level.
enum LogLevel {
  valueOff("Off"),
  valueVerbose("Verbose"),
  valueInformation("Information"),
  valueWarning("Warning"),
  valueError("Error");

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

