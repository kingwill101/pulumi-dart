// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuardrailSensitiveInformationPolicyConfigRegexesConfig {
  /// Options for sensitive information action. Valid values: `BLOCK`, `ANONYMIZE`, `NONE`.
  final pulumi.Input<String> action;
  /// The regex description.
  final pulumi.Input<String>? description;
  /// Action to take when harmful content is detected in the input. Valid values: `BLOCK`, `ANONYMIZE`, `NONE`.
  final pulumi.Input<String>? inputAction;
  /// Whether to enable guardrail evaluation on the input. When disabled, you aren't charged for the evaluation.
  final pulumi.Input<bool>? inputEnabled;
  /// The regex name.
  final pulumi.Input<String> name;
  /// Action to take when harmful content is detected in the output. Valid values: `BLOCK`, `ANONYMIZE`, `NONE`.
  final pulumi.Input<String>? outputAction;
  /// Whether to enable guardrail evaluation on the output. When disabled, you aren't charged for the evaluation.
  final pulumi.Input<bool>? outputEnabled;
  /// The regex pattern.
  final pulumi.Input<String> pattern;

  /// Creates a new [GuardrailSensitiveInformationPolicyConfigRegexesConfig].
  /// [action] Options for sensitive information action. Valid values: `BLOCK`, `ANONYMIZE`, `NONE`.
  /// [description] The regex description.
  /// [inputAction] Action to take when harmful content is detected in the input. Valid values: `BLOCK`, `ANONYMIZE`, `NONE`.
  /// [inputEnabled] Whether to enable guardrail evaluation on the input. When disabled, you aren't charged for the evaluation.
  /// [name] The regex name.
  /// [outputAction] Action to take when harmful content is detected in the output. Valid values: `BLOCK`, `ANONYMIZE`, `NONE`.
  /// [outputEnabled] Whether to enable guardrail evaluation on the output. When disabled, you aren't charged for the evaluation.
  /// [pattern] The regex pattern.
  GuardrailSensitiveInformationPolicyConfigRegexesConfig({
    required this.action,
    this.description,
    this.inputAction,
    this.inputEnabled,
    required this.name,
    this.outputAction,
    this.outputEnabled,
    required this.pattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': ?description,
      'inputAction': ?inputAction,
      'inputEnabled': ?inputEnabled,
      'name': name,
      'outputAction': ?outputAction,
      'outputEnabled': ?outputEnabled,
      'pattern': pattern,
    };
  }

  factory GuardrailSensitiveInformationPolicyConfigRegexesConfig.fromMap(Map<String, dynamic> map) {
    return GuardrailSensitiveInformationPolicyConfigRegexesConfig(
      action: (map['action'] as String).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      inputAction: map['inputAction'] == null ? null : ((map['inputAction'] as String).input()).input(),
      inputEnabled: map['inputEnabled'] == null ? null : ((map['inputEnabled'] as bool).input()).input(),
      name: (map['name'] as String).input(),
      outputAction: map['outputAction'] == null ? null : ((map['outputAction'] as String).input()).input(),
      outputEnabled: map['outputEnabled'] == null ? null : ((map['outputEnabled'] as bool).input()).input(),
      pattern: (map['pattern'] as String).input(),
    );
  }
}

