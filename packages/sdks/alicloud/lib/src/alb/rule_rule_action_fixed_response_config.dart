// ignore_for_file: unused_element, unnecessary_cast


class RuleRuleActionFixedResponseConfig {
  /// The fixed response. The response cannot exceed 1 KB in size and can contain only ASCII characters.
  final String content;
  /// The format of the fixed response. Valid values: `text/plain`, `text/css`, `text/html`, `application/javascript`, and `application/json`.
  final String? contentType;
  /// The redirect method. Valid values: `301`, `302`, `303`, `307`, and `308`.
  final String? httpCode;

  /// Creates a new [RuleRuleActionFixedResponseConfig].
  /// [content] The fixed response. The response cannot exceed 1 KB in size and can contain only ASCII characters.
  /// [contentType] The format of the fixed response. Valid values: `text/plain`, `text/css`, `text/html`, `application/javascript`, and `application/json`.
  /// [httpCode] The redirect method. Valid values: `301`, `302`, `303`, `307`, and `308`.
  RuleRuleActionFixedResponseConfig({
    required this.content,
    this.contentType,
    this.httpCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'contentType': ?contentType,
      'httpCode': ?httpCode,
    };
  }

  factory RuleRuleActionFixedResponseConfig.fromMap(Map<String, dynamic> map) {
    return RuleRuleActionFixedResponseConfig(
      content: map['content'] as String,
      contentType: map['contentType'] == null ? null : map['contentType'] as String,
      httpCode: map['httpCode'] == null ? null : map['httpCode'] as String,
    );
  }
}

