// ignore_for_file: unused_element, unnecessary_cast

class AgentFlowDefinitionNodeConfigurationInlineCode {
  /// The code that's executed in your inline code node.
  final String code;

  /// The programming language used by your inline code node.
  final String language;

  AgentFlowDefinitionNodeConfigurationInlineCode({
    required this.code,
    required this.language,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['language'] = language;
    return map;
  }

  factory AgentFlowDefinitionNodeConfigurationInlineCode.fromMap(
      Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationInlineCode(
      code: map['code'] as String,
      language: map['language'] as String,
    );
  }
}
