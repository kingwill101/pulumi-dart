// ignore_for_file: unused_element, unnecessary_cast

class GuardrailWordPolicyConfigWordsConfig {
  /// Action to take when harmful content is detected in the input. Valid values: `BLOCK`, `NONE`.
  final String? inputAction;

  /// Whether to enable guardrail evaluation on the input. When disabled, you aren't charged for the evaluation.
  final bool? inputEnabled;

  /// Action to take when harmful content is detected in the output. Valid values: `BLOCK`, `NONE`.
  final String? outputAction;

  /// Whether to enable guardrail evaluation on the output. When disabled, you aren't charged for the evaluation.
  final bool? outputEnabled;

  /// The custom word text.
  final String text;

  /// Creates a new [GuardrailWordPolicyConfigWordsConfig].
  /// [inputAction] Action to take when harmful content is detected in the input. Valid values: `BLOCK`, `NONE`.
  /// [inputEnabled] Whether to enable guardrail evaluation on the input. When disabled, you aren't charged for the evaluation.
  /// [outputAction] Action to take when harmful content is detected in the output. Valid values: `BLOCK`, `NONE`.
  /// [outputEnabled] Whether to enable guardrail evaluation on the output. When disabled, you aren't charged for the evaluation.
  /// [text] The custom word text.
  GuardrailWordPolicyConfigWordsConfig({
    this.inputAction,
    this.inputEnabled,
    this.outputAction,
    this.outputEnabled,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputAction': ?inputAction,
      'inputEnabled': ?inputEnabled,
      'outputAction': ?outputAction,
      'outputEnabled': ?outputEnabled,
      'text': text,
    };
  }

  factory GuardrailWordPolicyConfigWordsConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GuardrailWordPolicyConfigWordsConfig(
      inputAction: map['inputAction'] == null
          ? null
          : map['inputAction'] as String,
      inputEnabled: map['inputEnabled'] == null
          ? null
          : map['inputEnabled'] as bool,
      outputAction: map['outputAction'] == null
          ? null
          : map['outputAction'] as String,
      outputEnabled: map['outputEnabled'] == null
          ? null
          : map['outputEnabled'] as bool,
      text: map['text'] as String,
    );
  }
}
