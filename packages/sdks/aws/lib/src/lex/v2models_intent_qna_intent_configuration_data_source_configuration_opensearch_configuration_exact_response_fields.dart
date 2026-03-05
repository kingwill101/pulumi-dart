// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfigurationExactResponseFields {
  /// Field name for the answer.
  final pulumi.Input<String> answerField;
  /// Field name for the question.
  final pulumi.Input<String> questionField;

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
      answerField: pulumi.Input.fromValue(map['answerField'] as String),
      questionField: pulumi.Input.fromValue(map['questionField'] as String),
    );
  }
}

