import 'package:pulumi/pulumi.dart' as pulumi;

/// Property protocol
enum LoggingConfigProtocol implements pulumi.PulumiEnum<String> {
  application("application"),
  firehose("firehose"),
  httpS("http/s"),
  lambda("lambda"),
  sqs("sqs");

  const LoggingConfigProtocol(this.wireValue);
  @override
  final String wireValue;

  static LoggingConfigProtocol fromValue(String value) {
    for (final item in LoggingConfigProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggingConfigProtocol value: $value');
  }
}
