/// This is deprecated and has no effect. Do not use.
enum LogConfigDataAccessOptionsLogModeComputeBeta {
  logFailClosed("LOG_FAIL_CLOSED"),
  logModeUnspecified("LOG_MODE_UNSPECIFIED");

  const LogConfigDataAccessOptionsLogModeComputeBeta(this.value);
  final String value;

  static LogConfigDataAccessOptionsLogModeComputeBeta fromValue(String value) {
    for (final item in LogConfigDataAccessOptionsLogModeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown LogConfigDataAccessOptionsLogModeComputeBeta value: $value',
    );
  }
}
