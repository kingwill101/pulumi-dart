// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerRuleActionFixedResponse {
  /// The content type. Valid values are `text/plain`, `text/css`, `text/html`, `application/javascript` and `application/json`.
  final pulumi.Input<String> contentType;
  /// The message body.
  final pulumi.Input<String>? messageBody;
  /// The HTTP response code. Valid values are `2XX`, `4XX`, or `5XX`.
  final pulumi.Input<String>? statusCode;

  /// Creates a new [ListenerRuleActionFixedResponse].
  /// [contentType] The content type. Valid values are `text/plain`, `text/css`, `text/html`, `application/javascript` and `application/json`.
  /// [messageBody] The message body.
  /// [statusCode] The HTTP response code. Valid values are `2XX`, `4XX`, or `5XX`.
  ListenerRuleActionFixedResponse({
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

  factory ListenerRuleActionFixedResponse.fromMap(Map<String, dynamic> map) {
    return ListenerRuleActionFixedResponse(
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
      messageBody: (() { final guardedValue = map['messageBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusCode: (() { final guardedValue = map['statusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

