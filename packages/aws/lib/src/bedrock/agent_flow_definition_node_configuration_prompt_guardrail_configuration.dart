// ignore_for_file: unused_element, unnecessary_cast

class AgentFlowDefinitionNodeConfigurationPromptGuardrailConfiguration {
  /// The unique identifier of the guardrail.
  final String guardrailIdentifier;

  /// The version of the guardrail.
  final String guardrailVersion;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptGuardrailConfiguration].
  /// [guardrailIdentifier] The unique identifier of the guardrail.
  /// [guardrailVersion] The version of the guardrail.
  AgentFlowDefinitionNodeConfigurationPromptGuardrailConfiguration({
    required this.guardrailIdentifier,
    required this.guardrailVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['guardrailIdentifier'] = guardrailIdentifier;
    map['guardrailVersion'] = guardrailVersion;
    return map;
  }

  factory AgentFlowDefinitionNodeConfigurationPromptGuardrailConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptGuardrailConfiguration(
      guardrailIdentifier: map['guardrailIdentifier'] as String,
      guardrailVersion: map['guardrailVersion'] as String,
    );
  }
}
