// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AccessLogSetting
class AccessLogSetting {
  /// The Amazon Resource Name (ARN) of the CloudWatch Logs log group or Kinesis Data Firehose delivery stream to receive access logs. If you specify a Kinesis Data Firehose delivery stream, the stream name must begin with ``amazon-apigateway-``. This parameter is required to enable access logging.
  final pulumi.Input<String>? destinationArn;

  /// A single line format of the access logs of data, as specified by selected [$context variables](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-mapping-template-reference.html#context-variable-reference). The format must include at least ``$context.requestId``. This parameter is required to enable access logging.
  final pulumi.Input<String>? format;

  /// Creates a new [AccessLogSetting].
  /// [destinationArn] The Amazon Resource Name (ARN) of the CloudWatch Logs log group or Kinesis Data Firehose delivery stream to receive access logs. If you specify a Kinesis Data Firehose delivery stream, the stream name must begin with ``amazon-apigateway-``. This parameter is required to enable access logging.
  /// [format] A single line format of the access logs of data, as specified by selected [$context variables](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-mapping-template-reference.html#context-variable-reference). The format must include at least ``$context.requestId``. This parameter is required to enable access logging.
  AccessLogSetting({this.destinationArn, this.format});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationArn': ?destinationArn,
      'format': ?format,
    };
  }

  factory AccessLogSetting.fromMap(Map<String, dynamic> map) {
    return AccessLogSetting(
      destinationArn: (() {
        final guardedValue = map['destinationArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      format: (() {
        final guardedValue = map['format'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
