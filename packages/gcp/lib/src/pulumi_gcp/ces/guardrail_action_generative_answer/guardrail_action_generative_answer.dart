// ignore_for_file: unused_element, unnecessary_cast

class GuardrailActionGenerativeAnswer {
  /// The prompt to use for the generative answer.
  final String prompt;

  GuardrailActionGenerativeAnswer({
    required this.prompt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['prompt'] = prompt;
    return map;
  }

  factory GuardrailActionGenerativeAnswer.fromMap(Map<String, dynamic> map) {
    return GuardrailActionGenerativeAnswer(
      prompt: map['prompt'] as String,
    );
  }
}
