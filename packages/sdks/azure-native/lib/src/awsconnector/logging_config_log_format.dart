import 'package:pulumi/pulumi.dart' as pulumi;

/// The format in which Lambda sends your function's application and system logs to CloudWatch. Select between plain text and structured JSON.
enum LoggingConfigLogFormat implements pulumi.PulumiEnum<String> {
  jSON("JSON"),
  text("Text");

  const LoggingConfigLogFormat(this.wireValue);
  @override
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
