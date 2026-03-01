/// The format in which Lambda sends your function's application and system logs to CloudWatch. Select between plain text and structured JSON.
enum LoggingConfigLogFormat {
  jSON("JSON"),
  text("Text");

  const LoggingConfigLogFormat(this.value);
  final String value;

  static LoggingConfigLogFormat fromValue(String value) {
    for (final item in LoggingConfigLogFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggingConfigLogFormat value: $value');
  }
}

