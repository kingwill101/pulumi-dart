// ignore_for_file: unused_element, unnecessary_cast


class GuardrailWordPolicyConfigManagedWordListsConfig {
  /// Action to take when harmful content is detected in the input. Valid values: `BLOCK`, `NONE`.
  final String? inputAction;
  /// Whether to enable guardrail evaluation on the input. When disabled, you aren't charged for the evaluation.
  final bool? inputEnabled;
  /// Action to take when harmful content is detected in the output. Valid values: `BLOCK`, `NONE`.
  final String? outputAction;
  /// Whether to enable guardrail evaluation on the output. When disabled, you aren't charged for the evaluation.
  final bool? outputEnabled;
  /// Options for managed words.
  final String type;

  /// Creates a new [GuardrailWordPolicyConfigManagedWordListsConfig].
  /// [inputAction] Action to take when harmful content is detected in the input. Valid values: `BLOCK`, `NONE`.
  /// [inputEnabled] Whether to enable guardrail evaluation on the input. When disabled, you aren't charged for the evaluation.
  /// [outputAction] Action to take when harmful content is detected in the output. Valid values: `BLOCK`, `NONE`.
  /// [outputEnabled] Whether to enable guardrail evaluation on the output. When disabled, you aren't charged for the evaluation.
  /// [type] Options for managed words.
  GuardrailWordPolicyConfigManagedWordListsConfig({
    this.inputAction,
    this.inputEnabled,
    this.outputAction,
    this.outputEnabled,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputAction': ?inputAction,
      'inputEnabled': ?inputEnabled,
      'outputAction': ?outputAction,
      'outputEnabled': ?outputEnabled,
      'type': type,
    };
  }

  factory GuardrailWordPolicyConfigManagedWordListsConfig.fromMap(Map<String, dynamic> map) {
    return GuardrailWordPolicyConfigManagedWordListsConfig(
      inputAction: map['inputAction'] == null ? null : map['inputAction'] as String,
      inputEnabled: map['inputEnabled'] == null ? null : map['inputEnabled'] as bool,
      outputAction: map['outputAction'] == null ? null : map['outputAction'] as String,
      outputEnabled: map['outputEnabled'] == null ? null : map['outputEnabled'] as bool,
      type: map['type'] as String,
    );
  }
}

