// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentFlowDefinitionNodeConfigurationPromptGuardrailConfiguration {
  /// The unique identifier of the guardrail.
  final pulumi.Input<String> guardrailIdentifier;

  /// The version of the guardrail.
  final pulumi.Input<String> guardrailVersion;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptGuardrailConfiguration].
  /// [guardrailIdentifier] The unique identifier of the guardrail.
  /// [guardrailVersion] The version of the guardrail.
  AgentFlowDefinitionNodeConfigurationPromptGuardrailConfiguration({
    required this.guardrailIdentifier,
    required this.guardrailVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guardrailIdentifier': guardrailIdentifier,
      'guardrailVersion': guardrailVersion,
    };
  }

  factory AgentFlowDefinitionNodeConfigurationPromptGuardrailConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentFlowDefinitionNodeConfigurationPromptGuardrailConfiguration(
      guardrailIdentifier: pulumi.Input.fromValue(
        map['guardrailIdentifier'] as String,
      ),
      guardrailVersion: pulumi.Input.fromValue(
        map['guardrailVersion'] as String,
      ),
    );
  }
}
