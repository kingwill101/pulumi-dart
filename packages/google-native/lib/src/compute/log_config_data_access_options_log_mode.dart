/// This is deprecated and has no effect. Do not use.
enum LogConfigDataAccessOptionsLogMode {
  logFailClosed("LOG_FAIL_CLOSED"),
  logModeUnspecified("LOG_MODE_UNSPECIFIED");

  const LogConfigDataAccessOptionsLogMode(this.value);
  final String value;

  static LogConfigDataAccessOptionsLogMode fromValue(String value) {
    for (final item in LogConfigDataAccessOptionsLogMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogConfigDataAccessOptionsLogMode value: $value');
  }
}

