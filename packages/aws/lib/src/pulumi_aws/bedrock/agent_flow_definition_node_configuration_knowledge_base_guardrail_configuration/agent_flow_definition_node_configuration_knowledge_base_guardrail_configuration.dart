// ignore_for_file: unused_element, unnecessary_cast

class AgentFlowDefinitionNodeConfigurationKnowledgeBaseGuardrailConfiguration {
  /// The unique identifier of the guardrail.
  final String guardrailIdentifier;

  /// The version of the guardrail.
  final String guardrailVersion;

  AgentFlowDefinitionNodeConfigurationKnowledgeBaseGuardrailConfiguration({
    required this.guardrailIdentifier,
    required this.guardrailVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['guardrailIdentifier'] = guardrailIdentifier;
    map['guardrailVersion'] = guardrailVersion;
    return map;
  }

  factory AgentFlowDefinitionNodeConfigurationKnowledgeBaseGuardrailConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationKnowledgeBaseGuardrailConfiguration(
      guardrailIdentifier: map['guardrailIdentifier'] as String,
      guardrailVersion: map['guardrailVersion'] as String,
    );
  }
}
