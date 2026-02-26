/// This is deprecated and has no effect. Do not use.
enum LogConfigDataAccessOptionsLogMode3 {
  logFailClosed("LOG_FAIL_CLOSED"),
  logModeUnspecified("LOG_MODE_UNSPECIFIED");

  const LogConfigDataAccessOptionsLogMode3(this.value);
  final String value;

  static LogConfigDataAccessOptionsLogMode3 fromValue(String value) {
    for (final item in LogConfigDataAccessOptionsLogMode3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown LogConfigDataAccessOptionsLogMode3 value: $value');
  }
}
