// ignore_for_file: unused_element, unnecessary_cast

class GetListenerRuleActionFixedResponse {
  /// Content type of the response.
  final String contentType;

  /// Message body of the response.
  final String messageBody;

  /// The HTTP redirect code.
  final String statusCode;

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
    final map = <String, dynamic>{};
    map['contentType'] = contentType;
    map['messageBody'] = messageBody;
    map['statusCode'] = statusCode;
    return map;
  }

  factory GetListenerRuleActionFixedResponse.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleActionFixedResponse(
      contentType: map['contentType'] as String,
      messageBody: map['messageBody'] as String,
      statusCode: map['statusCode'] as String,
    );
  }
}
