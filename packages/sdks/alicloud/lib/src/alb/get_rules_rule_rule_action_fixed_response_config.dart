// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesRuleRuleActionFixedResponseConfig {
  /// The fixed response. The response cannot exceed 1 KB in size and can contain only ASCII characters.
  final pulumi.Input<String> content;
  /// The format of the fixed response.
  final pulumi.Input<String> contentType;
  /// The redirect method.
  final pulumi.Input<String> httpCode;

  /// Creates a new [GetRulesRuleRuleActionFixedResponseConfig].
  /// [content] The fixed response. The response cannot exceed 1 KB in size and can contain only ASCII characters.
  /// [contentType] The format of the fixed response.
  /// [httpCode] The redirect method.
  GetRulesRuleRuleActionFixedResponseConfig({
    required this.content,
    required this.contentType,
    required this.httpCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'contentType': contentType,
      'httpCode': httpCode,
    };
  }

  factory GetRulesRuleRuleActionFixedResponseConfig.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleActionFixedResponseConfig(
      content: pulumi.Input.fromValue(map['content'] as String),
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
      httpCode: pulumi.Input.fromValue(map['httpCode'] as String),
    );
  }
}

