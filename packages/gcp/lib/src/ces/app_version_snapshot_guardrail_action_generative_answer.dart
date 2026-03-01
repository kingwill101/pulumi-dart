// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotGuardrailActionGenerativeAnswer {
  /// (Output)
  /// The prompt definition. If not set, default prompt will be used.
  final String? prompt;

  /// Creates a new [AppVersionSnapshotGuardrailActionGenerativeAnswer].
  /// [prompt] (Output)
  AppVersionSnapshotGuardrailActionGenerativeAnswer({this.prompt});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'prompt': ?prompt};
  }

  factory AppVersionSnapshotGuardrailActionGenerativeAnswer.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotGuardrailActionGenerativeAnswer(
      prompt: map['prompt'] == null ? null : map['prompt'] as String,
    );
  }
}
