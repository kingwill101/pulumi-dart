// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotGuardrailActionRespondImmediatelyResponse {
  /// (Output)
  /// Whether summarization is disabled.
  final bool? disabled;

  /// (Output)
  /// Text for the agent to respond with.
  final String? text;

  AppVersionSnapshotGuardrailActionRespondImmediatelyResponse({
    this.disabled,
    this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue;
    }
    return map;
  }

  factory AppVersionSnapshotGuardrailActionRespondImmediatelyResponse.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotGuardrailActionRespondImmediatelyResponse(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}
