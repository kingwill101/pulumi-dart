// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupCustomResponseBody {
  /// The payload of the custom response.
  final pulumi.Input<String> content;
  /// The type of content in the payload that you are defining in the `content` argument. Valid values are `TEXT_PLAIN`, `TEXT_HTML`, or `APPLICATION_JSON`.
  final pulumi.Input<String> contentType;
  /// A unique key identifying the custom response body. This is referenced by the `customResponseBodyKey` argument in the Custom Response block.
  final pulumi.Input<String> key;

  /// Creates a new [RuleGroupCustomResponseBody].
  /// [content] The payload of the custom response.
  /// [contentType] The type of content in the payload that you are defining in the `content` argument. Valid values are `TEXT_PLAIN`, `TEXT_HTML`, or `APPLICATION_JSON`.
  /// [key] A unique key identifying the custom response body. This is referenced by the `customResponseBodyKey` argument in the Custom Response block.
  const RuleGroupCustomResponseBody({
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

  factory RuleGroupCustomResponseBody.fromMap(Map<String, dynamic> map) {
    return RuleGroupCustomResponseBody(
      content: pulumi.Input.fromValue(map['content'] as String),
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
