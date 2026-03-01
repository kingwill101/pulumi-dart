/// Property protocol
enum LoggingConfigProtocol {
  application("application"),
  firehose("firehose"),
  httpS("http/s"),
  lambda("lambda"),
  sqs("sqs");

  const LoggingConfigProtocol(this.value);
  final String value;

  static LoggingConfigProtocol fromValue(String value) {
    for (final item in LoggingConfigProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggingConfigProtocol value: $value');
  }
}

