/// Logging level for batch inference operation.
enum BatchLoggingLevel {
  valueInfo("Info"),
  valueWarning("Warning"),
  valueDebug("Debug");

  const BatchLoggingLevel(this.value);
  final String value;

  static BatchLoggingLevel fromValue(String value) {
    for (final item in BatchLoggingLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BatchLoggingLevel value: $value');
  }
}

