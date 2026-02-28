// ignore_for_file: unused_element, unnecessary_cast

class GuardrailActionRespondImmediatelyResponse {
  /// Whether the response is disabled. Disabled responses are not used by the
  /// agent.
  final bool? disabled;

  /// Text for the agent to respond with.
  final String text;

  /// Creates a new [GuardrailActionRespondImmediatelyResponse].
  /// [disabled] Whether the response is disabled. Disabled responses are not used by the
  /// [text] Text for the agent to respond with.
  GuardrailActionRespondImmediatelyResponse({
    this.disabled,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    map['text'] = text;
    return map;
  }

  factory GuardrailActionRespondImmediatelyResponse.fromMap(
      Map<String, dynamic> map) {
    return GuardrailActionRespondImmediatelyResponse(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      text: map['text'] as String,
    );
  }
}
