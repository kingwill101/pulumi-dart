// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuardrailSensitiveInformationPolicyConfigRegexesConfig {
  /// Options for sensitive information action. Valid values: `BLOCK`, `ANONYMIZE`, `NONE`.
  final pulumi.Input<String> action;
  /// The regex description.
  final pulumi.Input<String?>? description;
  /// Action to take when harmful content is detected in the input. Valid values: `BLOCK`, `ANONYMIZE`, `NONE`.
  final pulumi.Input<String?>? inputAction;
  /// Whether to enable guardrail evaluation on the input. When disabled, you aren't charged for the evaluation.
  final pulumi.Input<bool?>? inputEnabled;
  /// The regex name.
  final pulumi.Input<String> name;
  /// Action to take when harmful content is detected in the output. Valid values: `BLOCK`, `ANONYMIZE`, `NONE`.
  final pulumi.Input<String?>? outputAction;
  /// Whether to enable guardrail evaluation on the output. When disabled, you aren't charged for the evaluation.
  final pulumi.Input<bool?>? outputEnabled;
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
  const GuardrailSensitiveInformationPolicyConfigRegexesConfig({
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
      action: pulumi.Input.fromValue(map['action'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputAction: (() { final guardedValue = map['inputAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputEnabled: (() { final guardedValue = map['inputEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      outputAction: (() { final guardedValue = map['outputAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputEnabled: (() { final guardedValue = map['outputEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pattern: pulumi.Input.fromValue(map['pattern'] as String),
    );
  }
}
