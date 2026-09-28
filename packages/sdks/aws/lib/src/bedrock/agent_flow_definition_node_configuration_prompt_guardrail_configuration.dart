// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentFlowDefinitionNodeConfigurationPromptGuardrailConfiguration {
  /// Unique identifier of the guardrail.
  final pulumi.Input<String> guardrailIdentifier;
  /// Version of the guardrail.
  final pulumi.Input<String> guardrailVersion;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptGuardrailConfiguration].
  /// [guardrailIdentifier] Unique identifier of the guardrail.
  /// [guardrailVersion] Version of the guardrail.
  const AgentFlowDefinitionNodeConfigurationPromptGuardrailConfiguration({
    required this.guardrailIdentifier,
    required this.guardrailVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guardrailIdentifier': guardrailIdentifier,
      'guardrailVersion': guardrailVersion,
    };
  }

  factory AgentFlowDefinitionNodeConfigurationPromptGuardrailConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptGuardrailConfiguration(
      guardrailIdentifier: pulumi.Input.fromValue(map['guardrailIdentifier'] as String),
      guardrailVersion: pulumi.Input.fromValue(map['guardrailVersion'] as String),
    );
  }
}
