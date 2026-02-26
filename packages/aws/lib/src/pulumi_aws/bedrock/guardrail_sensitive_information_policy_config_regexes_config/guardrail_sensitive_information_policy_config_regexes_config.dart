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
    final map = <String, dynamic>{};
    map['action'] = action;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final inputActionValue = inputAction;
    if (inputActionValue != null) {
      map['inputAction'] = inputActionValue;
    }
    final inputEnabledValue = inputEnabled;
    if (inputEnabledValue != null) {
      map['inputEnabled'] = inputEnabledValue;
    }
    map['name'] = name;
    final outputActionValue = outputAction;
    if (outputActionValue != null) {
      map['outputAction'] = outputActionValue;
    }
    final outputEnabledValue = outputEnabled;
    if (outputEnabledValue != null) {
      map['outputEnabled'] = outputEnabledValue;
    }
    map['pattern'] = pattern;
    return map;
  }

  factory GuardrailSensitiveInformationPolicyConfigRegexesConfig.fromMap(
      Map<String, dynamic> map) {
    return GuardrailSensitiveInformationPolicyConfigRegexesConfig(
      action: map['action'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      inputAction:
          map['inputAction'] == null ? null : map['inputAction'] as String,
      inputEnabled:
          map['inputEnabled'] == null ? null : map['inputEnabled'] as bool,
      name: map['name'] as String,
      outputAction:
          map['outputAction'] == null ? null : map['outputAction'] as String,
      outputEnabled:
          map['outputEnabled'] == null ? null : map['outputEnabled'] as bool,
      pattern: map['pattern'] as String,
    );
  }
}
