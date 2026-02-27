// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupCustomResponseBody {
  /// The payload of the custom response.
  final String content;

  /// The type of content in the payload that you are defining in the `content` argument. Valid values are `TEXT_PLAIN`, `TEXT_HTML`, or `APPLICATION_JSON`.
  final String contentType;

  /// A unique key identifying the custom response body. This is referenced by the `custom_response_body_key` argument in the Custom Response block.
  final String key;

  RuleGroupCustomResponseBody({
    required this.content,
    required this.contentType,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['content'] = content;
    map['contentType'] = contentType;
    map['key'] = key;
    return map;
  }

  factory RuleGroupCustomResponseBody.fromMap(Map<String, dynamic> map) {
    return RuleGroupCustomResponseBody(
      content: map['content'] as String,
      contentType: map['contentType'] as String,
      key: map['key'] as String,
    );
  }
}
