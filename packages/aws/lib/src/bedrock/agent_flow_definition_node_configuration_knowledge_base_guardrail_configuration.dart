// ignore_for_file: unused_element, unnecessary_cast

class AgentFlowDefinitionNodeConfigurationKnowledgeBaseGuardrailConfiguration {
  /// The unique identifier of the guardrail.
  final String guardrailIdentifier;

  /// The version of the guardrail.
  final String guardrailVersion;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationKnowledgeBaseGuardrailConfiguration].
  /// [guardrailIdentifier] The unique identifier of the guardrail.
  /// [guardrailVersion] The version of the guardrail.
  AgentFlowDefinitionNodeConfigurationKnowledgeBaseGuardrailConfiguration({
    required this.guardrailIdentifier,
    required this.guardrailVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guardrailIdentifier': guardrailIdentifier,
      'guardrailVersion': guardrailVersion,
    };
  }

  factory AgentFlowDefinitionNodeConfigurationKnowledgeBaseGuardrailConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentFlowDefinitionNodeConfigurationKnowledgeBaseGuardrailConfiguration(
      guardrailIdentifier: map['guardrailIdentifier'] as String,
      guardrailVersion: map['guardrailVersion'] as String,
    );
  }
}
