enum DataAccessOptionsLogMode2 {
  logModeUnspecified("LOG_MODE_UNSPECIFIED"),
  logFailClosed("LOG_FAIL_CLOSED");

  const DataAccessOptionsLogMode2(this.value);
  final String value;

  static DataAccessOptionsLogMode2 fromValue(String value) {
    for (final item in DataAccessOptionsLogMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataAccessOptionsLogMode2 value: $value');
  }
}
