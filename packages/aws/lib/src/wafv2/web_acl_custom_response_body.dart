// ignore_for_file: unused_element, unnecessary_cast

class WebAclCustomResponseBody {
  /// Payload of the custom response.
  final String content;

  /// Type of content in the payload that you are defining in the `content` argument. Valid values are `TEXT_PLAIN`, `TEXT_HTML`, or `APPLICATION_JSON`.
  final String contentType;

  /// Unique key identifying the custom response body. This is referenced by the `custom_response_body_key` argument in the `custom_response` block.
  final String key;

  /// Creates a new [WebAclCustomResponseBody].
  /// [content] Payload of the custom response.
  /// [contentType] Type of content in the payload that you are defining in the `content` argument. Valid values are `TEXT_PLAIN`, `TEXT_HTML`, or `APPLICATION_JSON`.
  /// [key] Unique key identifying the custom response body. This is referenced by the `custom_response_body_key` argument in the `custom_response` block.
  WebAclCustomResponseBody({
    required this.content,
    required this.contentType,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'contentType': contentType,
      'key': key,
    };
  }

  factory WebAclCustomResponseBody.fromMap(Map<String, dynamic> map) {
    return WebAclCustomResponseBody(
      content: map['content'] as String,
      contentType: map['contentType'] as String,
      key: map['key'] as String,
    );
  }
}
