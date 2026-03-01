// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleActionFixedResponse {
  /// The content type. Valid values are `text/plain`, `text/css`, `text/html`, `application/javascript` and `application/json`.
  final String contentType;

  /// The message body.
  final String? messageBody;

  /// The HTTP response code. Valid values are `2XX`, `4XX`, or `5XX`.
  final String? statusCode;

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
      contentType: map['contentType'] as String,
      messageBody: map['messageBody'] == null
          ? null
          : map['messageBody'] as String,
      statusCode: map['statusCode'] == null
          ? null
          : map['statusCode'] as String,
    );
  }
}
