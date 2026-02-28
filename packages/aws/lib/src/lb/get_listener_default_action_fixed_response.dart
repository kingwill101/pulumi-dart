// ignore_for_file: unused_element, unnecessary_cast

class GetListenerDefaultActionFixedResponse {
  final String contentType;
  final String messageBody;
  final String statusCode;

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
    final map = <String, dynamic>{};
    map['contentType'] = contentType;
    map['messageBody'] = messageBody;
    map['statusCode'] = statusCode;
    return map;
  }

  factory GetListenerDefaultActionFixedResponse.fromMap(
      Map<String, dynamic> map) {
    return GetListenerDefaultActionFixedResponse(
      contentType: map['contentType'] as String,
      messageBody: map['messageBody'] as String,
      statusCode: map['statusCode'] as String,
    );
  }
}
