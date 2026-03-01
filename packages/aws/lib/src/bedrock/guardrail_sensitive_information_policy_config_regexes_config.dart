// ignore_for_file: unused_element, unnecessary_cast


class GuardrailSensitiveInformationPolicyConfigRegexesConfig {
  /// Options for sensitive information action. Valid values: `BLOCK`, `ANONYMIZE`, `NONE`.
  final String action;
  /// The regex description.
  final String? description;
  /// Action to take when harmful content is detected in the input. Valid values: `BLOCK`, `ANONYMIZE`, `NONE`.
  final String? inputAction;
  /// Whether to enable guardrail evaluation on the input. When disabled, you aren't charged for the evaluation.
  final bool? inputEnabled;
  /// The regex name.
  final String name;
  /// Action to take when harmful content is detected in the output. Valid values: `BLOCK`, `ANONYMIZE`, `NONE`.
  final String? outputAction;
  /// Whether to enable guardrail evaluation on the output. When disabled, you aren't charged for the evaluation.
  final bool? outputEnabled;
  /// The regex pattern.
  final String pattern;

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
      action: map['action'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      inputAction: map['inputAction'] == null ? null : map['inputAction'] as String,
      inputEnabled: map['inputEnabled'] == null ? null : map['inputEnabled'] as bool,
      name: map['name'] as String,
      outputAction: map['outputAction'] == null ? null : map['outputAction'] as String,
      outputEnabled: map['outputEnabled'] == null ? null : map['outputEnabled'] as bool,
      pattern: map['pattern'] as String,
    );
  }
}

