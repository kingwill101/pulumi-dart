// ignore_for_file: unused_element, unnecessary_cast


/// Definition of FixedResponseConfig
class FixedResponseConfigResponse {
  /// The content type. Valid Values: text/plain | text/css | text/html | application/javascript | application/json
  final String? contentType;
  /// The message.
  final String? messageBody;
  /// The HTTP response code (2XX, 4XX, or 5XX).
  final String? statusCode;

  /// Creates a new [FixedResponseConfigResponse].
  /// [contentType] The content type. Valid Values: text/plain | text/css | text/html | application/javascript | application/json
  /// [messageBody] The message.
  /// [statusCode] The HTTP response code (2XX, 4XX, or 5XX).
  FixedResponseConfigResponse({
    this.contentType,
    this.messageBody,
    this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': ?contentType,
      'messageBody': ?messageBody,
      'statusCode': ?statusCode,
    };
  }

  factory FixedResponseConfigResponse.fromMap(Map<String, dynamic> map) {
    return FixedResponseConfigResponse(
      contentType: map['contentType'] == null ? null : map['contentType'] as String,
      messageBody: map['messageBody'] == null ? null : map['messageBody'] as String,
      statusCode: map['statusCode'] == null ? null : map['statusCode'] as String,
    );
  }
}

