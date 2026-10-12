// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentFlowDefinitionNodeConfigurationInlineCode {
  /// Code that's executed in your inline code node.
  final pulumi.Input<String> code;
  /// Programming language used by your inline code node.
  final pulumi.Input<String> language;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationInlineCode].
  /// [code] Code that's executed in your inline code node.
  /// [language] Programming language used by your inline code node.
  const AgentFlowDefinitionNodeConfigurationInlineCode({
    required this.code,
    required this.language,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'language': language,
    };
  }

  factory AgentFlowDefinitionNodeConfigurationInlineCode.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationInlineCode(
      code: pulumi.Input.fromValue(map['code'] as String),
      language: pulumi.Input.fromValue(map['language'] as String),
    );
  }
}
