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
  GetListenerDefaultActionFixedResponse({
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
      contentType: (map['contentType'] as String).input(),
      messageBody: (map['messageBody'] as String).input(),
      statusCode: (map['statusCode'] as String).input(),
    );
  }
}

