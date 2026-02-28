// ignore_for_file: unused_element, unnecessary_cast

class AgentAgentGuardrailConfiguration {
  /// Unique identifier of the guardrail.
  final String guardrailIdentifier;

  /// Version of the guardrail.
  final String guardrailVersion;

  /// Creates a new [AgentAgentGuardrailConfiguration].
  /// [guardrailIdentifier] Unique identifier of the guardrail.
  /// [guardrailVersion] Version of the guardrail.
  AgentAgentGuardrailConfiguration({
    required this.guardrailIdentifier,
    required this.guardrailVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['guardrailIdentifier'] = guardrailIdentifier;
    map['guardrailVersion'] = guardrailVersion;
    return map;
  }

  factory AgentAgentGuardrailConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentAgentGuardrailConfiguration(
      guardrailIdentifier: map['guardrailIdentifier'] as String,
      guardrailVersion: map['guardrailVersion'] as String,
    );
  }
}
