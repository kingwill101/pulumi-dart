/// The detail level.
enum LoggingDetails {
  none("None"),
  body("Body");

  const LoggingDetails(this.value);
  final String value;

  static LoggingDetails fromValue(String value) {
    for (final item in LoggingDetails.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggingDetails value: $value');
  }
}

