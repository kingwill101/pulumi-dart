// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupCustomResponseBody {
  /// The payload of the custom response.
  final String content;

  /// The type of content in the payload that you are defining in the <span pulumi-lang-nodejs="`content`" pulumi-lang-dotnet="`Content`" pulumi-lang-go="`content`" pulumi-lang-python="`content`" pulumi-lang-yaml="`content`" pulumi-lang-java="`content`">`content`</span> argument. Valid values are `TEXT_PLAIN`, `TEXT_HTML`, or `APPLICATION_JSON`.
  final String contentType;

  /// A unique key identifying the custom response body. This is referenced by the <span pulumi-lang-nodejs="`customResponseBodyKey`" pulumi-lang-dotnet="`CustomResponseBodyKey`" pulumi-lang-go="`customResponseBodyKey`" pulumi-lang-python="`custom_response_body_key`" pulumi-lang-yaml="`customResponseBodyKey`" pulumi-lang-java="`customResponseBodyKey`">`custom_response_body_key`</span> argument in the Custom Response block.
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
