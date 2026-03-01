// ignore_for_file: unused_element, unnecessary_cast


class GuardrailSensitiveInformationPolicyConfigPiiEntitiesConfig {
  /// Options for sensitive information action. Valid values: `BLOCK`, `ANONYMIZE`, `NONE`.
  final String action;
  /// Action to take when harmful content is detected in the input. Valid values: `BLOCK`, `ANONYMIZE`, `NONE`.
  final String? inputAction;
  /// Whether to enable guardrail evaluation on the input. When disabled, you aren't charged for the evaluation.
  final bool? inputEnabled;
  /// Action to take when harmful content is detected in the output. Valid values: `BLOCK`, `ANONYMIZE`, `NONE`.
  final String? outputAction;
  /// Whether to enable guardrail evaluation on the output. When disabled, you aren't charged for the evaluation.
  final bool? outputEnabled;
  /// The currently supported PII entities.
  final String type;

  /// Creates a new [GuardrailSensitiveInformationPolicyConfigPiiEntitiesConfig].
  /// [action] Options for sensitive information action. Valid values: `BLOCK`, `ANONYMIZE`, `NONE`.
  /// [inputAction] Action to take when harmful content is detected in the input. Valid values: `BLOCK`, `ANONYMIZE`, `NONE`.
  /// [inputEnabled] Whether to enable guardrail evaluation on the input. When disabled, you aren't charged for the evaluation.
  /// [outputAction] Action to take when harmful content is detected in the output. Valid values: `BLOCK`, `ANONYMIZE`, `NONE`.
  /// [outputEnabled] Whether to enable guardrail evaluation on the output. When disabled, you aren't charged for the evaluation.
  /// [type] The currently supported PII entities.
  GuardrailSensitiveInformationPolicyConfigPiiEntitiesConfig({
    required this.action,
    this.inputAction,
    this.inputEnabled,
    this.outputAction,
    this.outputEnabled,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'inputAction': ?inputAction,
      'inputEnabled': ?inputEnabled,
      'outputAction': ?outputAction,
      'outputEnabled': ?outputEnabled,
      'type': type,
    };
  }

  factory GuardrailSensitiveInformationPolicyConfigPiiEntitiesConfig.fromMap(Map<String, dynamic> map) {
    return GuardrailSensitiveInformationPolicyConfigPiiEntitiesConfig(
      action: map['action'] as String,
      inputAction: map['inputAction'] == null ? null : map['inputAction'] as String,
      inputEnabled: map['inputEnabled'] == null ? null : map['inputEnabled'] as bool,
      outputAction: map['outputAction'] == null ? null : map['outputAction'] as String,
      outputEnabled: map['outputEnabled'] == null ? null : map['outputEnabled'] as bool,
      type: map['type'] as String,
    );
  }
}

