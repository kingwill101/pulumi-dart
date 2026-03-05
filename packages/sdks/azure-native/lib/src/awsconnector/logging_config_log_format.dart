/// The format in which Lambda sends your function's application and system logs to CloudWatch. Select between plain text and structured JSON.
enum LoggingConfigLogFormat {
  jSON("JSON"),
  text("Text");

  const LoggingConfigLogFormat(this.wireValue);
  final String wireValue;

  static LoggingConfigLogFormat fromValue(String value) {
    for (final item in LoggingConfigLogFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggingConfigLogFormat value: $value');
  }
}

