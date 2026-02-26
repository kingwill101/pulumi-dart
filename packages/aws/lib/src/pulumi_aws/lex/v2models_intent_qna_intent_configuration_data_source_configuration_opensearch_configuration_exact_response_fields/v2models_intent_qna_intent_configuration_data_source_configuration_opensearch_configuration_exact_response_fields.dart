// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfigurationExactResponseFields {
  /// Field name for the answer.
  final String answerField;

  /// Field name for the question.
  final String questionField;

  V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfigurationExactResponseFields({
    required this.answerField,
    required this.questionField,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['answerField'] = answerField;
    map['questionField'] = questionField;
    return map;
  }

  factory V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfigurationExactResponseFields.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfigurationExactResponseFields(
      answerField: map['answerField'] as String,
      questionField: map['questionField'] as String,
    );
  }
}
