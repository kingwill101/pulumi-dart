// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StageAccessLogSettings {
  /// ARN of the CloudWatch Logs log group or Kinesis Data Firehose delivery stream to receive access logs. If you specify a Kinesis Data Firehose delivery stream, the stream name must begin with `amazon-apigateway-`. Automatically removes trailing `:*` if present.
  final pulumi.Input<String> destinationArn;
  /// Formatting and values recorded in the logs.
  /// For more information on configuring the log format rules visit the AWS [documentation](https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-logging.html)
  final pulumi.Input<String> format;

  /// Creates a new [StageAccessLogSettings].
  /// [destinationArn] ARN of the CloudWatch Logs log group or Kinesis Data Firehose delivery stream to receive access logs. If you specify a Kinesis Data Firehose delivery stream, the stream name must begin with `amazon-apigateway-`. Automatically removes trailing `:*` if present.
  /// [format] Formatting and values recorded in the logs.
  StageAccessLogSettings({
    required this.destinationArn,
    required this.format,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationArn': destinationArn,
      'format': format,
    };
  }

  factory StageAccessLogSettings.fromMap(Map<String, dynamic> map) {
    return StageAccessLogSettings(
      destinationArn: (map['destinationArn'] as String).input(),
      format: (map['format'] as String).input(),
    );
  }
}

