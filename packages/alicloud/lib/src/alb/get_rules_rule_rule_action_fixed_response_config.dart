// ignore_for_file: unused_element, unnecessary_cast


class GetRulesRuleRuleActionFixedResponseConfig {
  /// The fixed response. The response cannot exceed 1 KB in size and can contain only ASCII characters.
  final String content;
  /// The format of the fixed response.
  final String contentType;
  /// The redirect method.
  final String httpCode;

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
      content: map['content'] as String,
      contentType: map['contentType'] as String,
      httpCode: map['httpCode'] as String,
    );
  }
}

