// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfigurationExactResponseFields {
  /// Field name for the answer.
  final pulumi.Input<String>? answerField;

  /// Creates a new [V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfigurationExactResponseFields].
  /// [answerField] Field name for the answer.
  V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfigurationExactResponseFields({
    this.answerField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'answerField': ?answerField};
  }

  factory V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfigurationExactResponseFields.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfigurationExactResponseFields(
      answerField: (() {
        final guardedValue = map['answerField'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
