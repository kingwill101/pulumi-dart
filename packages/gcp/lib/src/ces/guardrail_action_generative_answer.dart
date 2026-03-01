// ignore_for_file: unused_element, unnecessary_cast

class GuardrailActionGenerativeAnswer {
  /// The prompt to use for the generative answer.
  final String prompt;

  /// Creates a new [GuardrailActionGenerativeAnswer].
  /// [prompt] The prompt to use for the generative answer.
  GuardrailActionGenerativeAnswer({required this.prompt});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'prompt': prompt};
  }

  factory GuardrailActionGenerativeAnswer.fromMap(Map<String, dynamic> map) {
    return GuardrailActionGenerativeAnswer(prompt: map['prompt'] as String);
  }
}
