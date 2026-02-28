// ignore_for_file: unused_element, unnecessary_cast

class GetAgentAgentVersionsAgentVersionSummaryGuardrailConfiguration {
  /// Unique identifier of the guardrail.
  final String guardrailIdentifier;

  /// Version of the guardrail.
  final String guardrailVersion;

  /// Creates a new [GetAgentAgentVersionsAgentVersionSummaryGuardrailConfiguration].
  /// [guardrailIdentifier] Unique identifier of the guardrail.
  /// [guardrailVersion] Version of the guardrail.
  GetAgentAgentVersionsAgentVersionSummaryGuardrailConfiguration({
    required this.guardrailIdentifier,
    required this.guardrailVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['guardrailIdentifier'] = guardrailIdentifier;
    map['guardrailVersion'] = guardrailVersion;
    return map;
  }

  factory GetAgentAgentVersionsAgentVersionSummaryGuardrailConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetAgentAgentVersionsAgentVersionSummaryGuardrailConfiguration(
      guardrailIdentifier: map['guardrailIdentifier'] as String,
      guardrailVersion: map['guardrailVersion'] as String,
    );
  }
}
