/// The direction.
enum LoggingDirections {
  none("None"),
  request("Request"),
  response("Response");

  const LoggingDirections(this.value);
  final String value;

  static LoggingDirections fromValue(String value) {
    for (final item in LoggingDirections.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggingDirections value: $value');
  }
}

