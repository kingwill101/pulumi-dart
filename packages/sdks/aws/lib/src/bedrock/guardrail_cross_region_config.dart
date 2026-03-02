// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuardrailCrossRegionConfig {
  /// Guardrail profile ARN.
  final pulumi.Input<String> guardrailProfileIdentifier;

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
      guardrailProfileIdentifier: (map['guardrailProfileIdentifier'] as String).input(),
    );
  }
}

