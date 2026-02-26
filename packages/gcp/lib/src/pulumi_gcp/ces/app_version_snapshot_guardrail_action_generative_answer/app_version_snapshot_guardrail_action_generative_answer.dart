// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotGuardrailActionGenerativeAnswer {
  /// (Output)
  /// The prompt definition. If not set, default prompt will be used.
  final String? prompt;

  AppVersionSnapshotGuardrailActionGenerativeAnswer({
    this.prompt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final promptValue = prompt;
    if (promptValue != null) {
      map['prompt'] = promptValue;
    }
    return map;
  }

  factory AppVersionSnapshotGuardrailActionGenerativeAnswer.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotGuardrailActionGenerativeAnswer(
      prompt: map['prompt'] == null ? null : map['prompt'] as String,
    );
  }
}
