// ignore_for_file: unused_element, unnecessary_cast

class WebAclCustomResponseBody {
  /// Payload of the custom response.
  final String content;

  /// Type of content in the payload that you are defining in the <span pulumi-lang-nodejs="`content`" pulumi-lang-dotnet="`Content`" pulumi-lang-go="`content`" pulumi-lang-python="`content`" pulumi-lang-yaml="`content`" pulumi-lang-java="`content`">`content`</span> argument. Valid values are `TEXT_PLAIN`, `TEXT_HTML`, or `APPLICATION_JSON`.
  final String contentType;

  /// Unique key identifying the custom response body. This is referenced by the <span pulumi-lang-nodejs="`customResponseBodyKey`" pulumi-lang-dotnet="`CustomResponseBodyKey`" pulumi-lang-go="`customResponseBodyKey`" pulumi-lang-python="`custom_response_body_key`" pulumi-lang-yaml="`customResponseBodyKey`" pulumi-lang-java="`customResponseBodyKey`">`custom_response_body_key`</span> argument in the <span pulumi-lang-nodejs="`customResponse`" pulumi-lang-dotnet="`CustomResponse`" pulumi-lang-go="`customResponse`" pulumi-lang-python="`custom_response`" pulumi-lang-yaml="`customResponse`" pulumi-lang-java="`customResponse`">`custom_response`</span> block.
  final String key;

  WebAclCustomResponseBody({
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

  factory WebAclCustomResponseBody.fromMap(Map<String, dynamic> map) {
    return WebAclCustomResponseBody(
      content: map['content'] as String,
      contentType: map['contentType'] as String,
      key: map['key'] as String,
    );
  }
}
