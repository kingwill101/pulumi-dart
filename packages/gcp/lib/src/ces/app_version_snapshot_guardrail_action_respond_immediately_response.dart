// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotGuardrailActionRespondImmediatelyResponse {
  /// (Output)
  /// Whether summarization is disabled.
  final bool? disabled;

  /// (Output)
  /// Text for the agent to respond with.
  final String? text;

  /// Creates a new [AppVersionSnapshotGuardrailActionRespondImmediatelyResponse].
  /// [disabled] (Output)
  /// [text] (Output)
  AppVersionSnapshotGuardrailActionRespondImmediatelyResponse({
    this.disabled,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disabled': ?disabled, 'text': ?text};
  }

  factory AppVersionSnapshotGuardrailActionRespondImmediatelyResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotGuardrailActionRespondImmediatelyResponse(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}
