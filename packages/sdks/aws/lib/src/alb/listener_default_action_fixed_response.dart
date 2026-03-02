// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerDefaultActionFixedResponse {
  /// Content type. Valid values are `text/plain`, `text/css`, `text/html`, `application/javascript` and `application/json`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> contentType;
  /// Message body.
  final pulumi.Input<String>? messageBody;
  /// HTTP response code. Valid values are `2XX`, `4XX`, or `5XX`.
  final pulumi.Input<String>? statusCode;

  /// Creates a new [ListenerDefaultActionFixedResponse].
  /// [contentType] Content type. Valid values are `text/plain`, `text/css`, `text/html`, `application/javascript` and `application/json`.
  /// [messageBody] Message body.
  /// [statusCode] HTTP response code. Valid values are `2XX`, `4XX`, or `5XX`.
  ListenerDefaultActionFixedResponse({
    required this.contentType,
    this.messageBody,
    this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': contentType,
      'messageBody': ?messageBody,
      'statusCode': ?statusCode,
    };
  }

  factory ListenerDefaultActionFixedResponse.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultActionFixedResponse(
      contentType: (map['contentType'] as String).input(),
      messageBody: map['messageBody'] == null ? null : ((map['messageBody'] as String).input()).input(),
      statusCode: map['statusCode'] == null ? null : ((map['statusCode'] as String).input()).input(),
    );
  }
}

