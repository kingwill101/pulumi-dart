// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnforcedGuardrailConfigurationModelEnforcement {
  /// List of models to exclude from enforcement of the guardrail.
  final pulumi.Input<List<String>> excludedModels;
  /// List of models to enforce the guardrail on. Use `ALL` to enforce on all models.
  final pulumi.Input<List<String>> includedModels;

  /// Creates a new [EnforcedGuardrailConfigurationModelEnforcement].
  /// [excludedModels] List of models to exclude from enforcement of the guardrail.
  /// [includedModels] List of models to enforce the guardrail on. Use `ALL` to enforce on all models.
  const EnforcedGuardrailConfigurationModelEnforcement({
    required this.excludedModels,
    required this.includedModels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedModels': excludedModels,
      'includedModels': includedModels,
    };
  }

  factory EnforcedGuardrailConfigurationModelEnforcement.fromMap(Map<String, dynamic> map) {
    return EnforcedGuardrailConfigurationModelEnforcement(
      excludedModels: pulumi.Input.fromValue((map['excludedModels'] as List).cast<String>()),
      includedModels: pulumi.Input.fromValue((map['includedModels'] as List).cast<String>()),
    );
  }
}
