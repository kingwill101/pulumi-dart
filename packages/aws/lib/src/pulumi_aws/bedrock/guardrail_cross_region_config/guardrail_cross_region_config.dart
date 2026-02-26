// ignore_for_file: unused_element, unnecessary_cast

class GuardrailCrossRegionConfig {
  /// Guardrail profile ARN.
  final String guardrailProfileIdentifier;

  GuardrailCrossRegionConfig({
    required this.guardrailProfileIdentifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['guardrailProfileIdentifier'] = guardrailProfileIdentifier;
    return map;
  }

  factory GuardrailCrossRegionConfig.fromMap(Map<String, dynamic> map) {
    return GuardrailCrossRegionConfig(
      guardrailProfileIdentifier: map['guardrailProfileIdentifier'] as String,
    );
  }
}
