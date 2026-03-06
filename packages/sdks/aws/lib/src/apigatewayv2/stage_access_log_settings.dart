// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StageAccessLogSettings {
  /// ARN of the CloudWatch Logs log group to receive access logs. Any trailing `:*` is trimmed from the ARN.
  final pulumi.Input<String> destinationArn;
  /// Single line [format](https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-logging.html#apigateway-cloudwatch-log-formats) of the access logs of data. Refer to log settings for [HTTP](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-logging-variables.html) or [Websocket](https://docs.aws.amazon.com/apigateway/latest/developerguide/websocket-api-logging.html).
  final pulumi.Input<String> format;

  /// Creates a new [StageAccessLogSettings].
  /// [destinationArn] ARN of the CloudWatch Logs log group to receive access logs. Any trailing `:*` is trimmed from the ARN.
  /// [format] Single line [format](https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-logging.html#apigateway-cloudwatch-log-formats) of the access logs of data. Refer to log settings for [HTTP](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-logging-variables.html) or [Websocket](https://docs.aws.amazon.com/apigateway/latest/developerguide/websocket-api-logging.html).
  const StageAccessLogSettings({
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
      destinationArn: pulumi.Input.fromValue(map['destinationArn'] as String),
      format: pulumi.Input.fromValue(map['format'] as String),
    );
  }
}

