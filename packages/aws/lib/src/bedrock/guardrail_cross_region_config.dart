// ignore_for_file: unused_element, unnecessary_cast


class GuardrailCrossRegionConfig {
  /// Guardrail profile ARN.
  final String guardrailProfileIdentifier;

  /// Creates a new [GuardrailCrossRegionConfig].
  /// [guardrailProfileIdentifier] Guardrail profile ARN.
  GuardrailCrossRegionConfig({
    required this.guardrailProfileIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guardrailProfileIdentifier': guardrailProfileIdentifier,
    };
  }

  factory GuardrailCrossRegionConfig.fromMap(Map<String, dynamic> map) {
    return GuardrailCrossRegionConfig(
      guardrailProfileIdentifier: map['guardrailProfileIdentifier'] as String,
    );
  }
}

