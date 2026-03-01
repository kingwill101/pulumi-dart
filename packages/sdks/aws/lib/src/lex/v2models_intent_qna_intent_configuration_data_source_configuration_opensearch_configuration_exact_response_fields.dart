// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfigurationExactResponseFields {
  /// Field name for the answer.
  final String answerField;
  /// Field name for the question.
  final String questionField;

  /// Creates a new [V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfigurationExactResponseFields].
  /// [answerField] Field name for the answer.
  /// [questionField] Field name for the question.
  V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfigurationExactResponseFields({
    required this.answerField,
    required this.questionField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'answerField': answerField,
      'questionField': questionField,
    };
  }

  factory V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfigurationExactResponseFields.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfigurationExactResponseFields(
      answerField: map['answerField'] as String,
      questionField: map['questionField'] as String,
    );
  }
}

