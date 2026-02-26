// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleActionFixedResponse {
  /// The content type. Valid values are `text/plain`, `text/css`, `text/html`, `application/javascript` and `application/json`.
  final String contentType;

  /// The message body.
  final String? messageBody;

  /// The HTTP response code. Valid values are `2XX`, `4XX`, or `5XX`.
  final String? statusCode;

  ListenerRuleActionFixedResponse({
    required this.contentType,
    this.messageBody,
    this.statusCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contentType'] = contentType;
    final messageBodyValue = messageBody;
    if (messageBodyValue != null) {
      map['messageBody'] = messageBodyValue;
    }
    final statusCodeValue = statusCode;
    if (statusCodeValue != null) {
      map['statusCode'] = statusCodeValue;
    }
    return map;
  }

  factory ListenerRuleActionFixedResponse.fromMap(Map<String, dynamic> map) {
    return ListenerRuleActionFixedResponse(
      contentType: map['contentType'] as String,
      messageBody:
          map['messageBody'] == null ? null : map['messageBody'] as String,
      statusCode:
          map['statusCode'] == null ? null : map['statusCode'] as String,
    );
  }
}
