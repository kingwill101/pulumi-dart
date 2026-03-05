// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerRuleActionFixedResponse {
  /// Content type of the response.
  final pulumi.Input<String> contentType;
  /// Message body of the response.
  final pulumi.Input<String> messageBody;
  /// The HTTP redirect code.
  final pulumi.Input<String> statusCode;

  /// Creates a new [GetListenerRuleActionFixedResponse].
  /// [contentType] Content type of the response.
  /// [messageBody] Message body of the response.
  /// [statusCode] The HTTP redirect code.
  GetListenerRuleActionFixedResponse({
    required this.contentType,
    required this.messageBody,
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': contentType,
      'messageBody': messageBody,
      'statusCode': statusCode,
    };
  }

  factory GetListenerRuleActionFixedResponse.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleActionFixedResponse(
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
      messageBody: pulumi.Input.fromValue(map['messageBody'] as String),
      statusCode: pulumi.Input.fromValue(map['statusCode'] as String),
    );
  }
}

