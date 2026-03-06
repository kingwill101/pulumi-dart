// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerDefaultActionFixedResponse {
  final pulumi.Input<String> contentType;
  final pulumi.Input<String> messageBody;
  final pulumi.Input<String> statusCode;

  /// Creates a new [GetListenerDefaultActionFixedResponse].
  /// [contentType] Required.
  /// [messageBody] Required.
  /// [statusCode] Required.
  const GetListenerDefaultActionFixedResponse({
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

  factory GetListenerDefaultActionFixedResponse.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultActionFixedResponse(
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
      messageBody: pulumi.Input.fromValue(map['messageBody'] as String),
      statusCode: pulumi.Input.fromValue(map['statusCode'] as String),
    );
  }
}

