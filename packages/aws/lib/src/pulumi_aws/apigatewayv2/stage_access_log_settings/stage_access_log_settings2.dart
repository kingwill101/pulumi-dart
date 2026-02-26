// ignore_for_file: unused_element, unnecessary_cast

class StageAccessLogSettings2 {
  /// ARN of the CloudWatch Logs log group to receive access logs. Any trailing `:*` is trimmed from the ARN.
  final String destinationArn;

  /// Single line [format](https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-logging.html#apigateway-cloudwatch-log-formats) of the access logs of data. Refer to log settings for [HTTP](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-logging-variables.html) or [Websocket](https://docs.aws.amazon.com/apigateway/latest/developerguide/websocket-api-logging.html).
  final String format;

  StageAccessLogSettings2({
    required this.destinationArn,
    required this.format,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationArn'] = destinationArn;
    map['format'] = format;
    return map;
  }

  factory StageAccessLogSettings2.fromMap(Map<String, dynamic> map) {
    return StageAccessLogSettings2(
      destinationArn: map['destinationArn'] as String,
      format: map['format'] as String,
    );
  }
}
