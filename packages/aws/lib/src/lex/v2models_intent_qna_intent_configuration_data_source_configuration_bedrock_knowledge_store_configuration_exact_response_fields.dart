// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfigurationExactResponseFields {
  /// Field name for the answer.
  final String? answerField;

  /// Creates a new [V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfigurationExactResponseFields].
  /// [answerField] Field name for the answer.
  V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfigurationExactResponseFields({
    this.answerField,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final answerFieldValue = answerField;
    if (answerFieldValue != null) {
      map['answerField'] = answerFieldValue;
    }
    return map;
  }

  factory V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfigurationExactResponseFields.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfigurationExactResponseFields(
      answerField:
          map['answerField'] == null ? null : map['answerField'] as String,
    );
  }
}
