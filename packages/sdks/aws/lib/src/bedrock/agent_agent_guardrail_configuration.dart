// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentAgentGuardrailConfiguration {
  /// Unique identifier of the guardrail.
  final pulumi.Input<String> guardrailIdentifier;
  /// Version of the guardrail.
  final pulumi.Input<String> guardrailVersion;

  /// Creates a new [AgentAgentGuardrailConfiguration].
  /// [guardrailIdentifier] Unique identifier of the guardrail.
  /// [guardrailVersion] Version of the guardrail.
  AgentAgentGuardrailConfiguration({
    required this.guardrailIdentifier,
    required this.guardrailVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guardrailIdentifier': guardrailIdentifier,
      'guardrailVersion': guardrailVersion,
    };
  }

  factory AgentAgentGuardrailConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentAgentGuardrailConfiguration(
      guardrailIdentifier: pulumi.Input.fromValue(map['guardrailIdentifier'] as String),
      guardrailVersion: pulumi.Input.fromValue(map['guardrailVersion'] as String),
    );
  }
}

