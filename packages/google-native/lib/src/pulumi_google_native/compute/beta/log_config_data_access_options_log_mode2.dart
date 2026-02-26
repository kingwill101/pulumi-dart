/// This is deprecated and has no effect. Do not use.
enum LogConfigDataAccessOptionsLogMode2 {
  logFailClosed("LOG_FAIL_CLOSED"),
  logModeUnspecified("LOG_MODE_UNSPECIFIED");

  const LogConfigDataAccessOptionsLogMode2(this.value);
  final String value;

  static LogConfigDataAccessOptionsLogMode2 fromValue(String value) {
    for (final item in LogConfigDataAccessOptionsLogMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown LogConfigDataAccessOptionsLogMode2 value: $value');
  }
}
