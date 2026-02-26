// ignore_for_file: unused_element, unnecessary_cast

class StageAccessLogSettings {
  /// ARN of the CloudWatch Logs log group or Kinesis Data Firehose delivery stream to receive access logs. If you specify a Kinesis Data Firehose delivery stream, the stream name must begin with `amazon-apigateway-`. Automatically removes trailing `:*` if present.
  final String destinationArn;

  /// Formatting and values recorded in the logs.
  /// For more information on configuring the log format rules visit the AWS [documentation](https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-logging.html)
  final String format;

  StageAccessLogSettings({
    required this.destinationArn,
    required this.format,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationArn'] = destinationArn;
    map['format'] = format;
    return map;
  }

  factory StageAccessLogSettings.fromMap(Map<String, dynamic> map) {
    return StageAccessLogSettings(
      destinationArn: map['destinationArn'] as String,
      format: map['format'] as String,
    );
  }
}
