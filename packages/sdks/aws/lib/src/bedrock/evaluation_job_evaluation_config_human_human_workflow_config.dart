// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationJobEvaluationConfigHumanHumanWorkflowConfig {
  /// ARN of the Amazon SageMaker AI flow definition.
  final pulumi.Input<String> flowDefinitionArn;
  /// Instructions for the flow definition.
  final pulumi.Input<String?>? instructions;

  /// Creates a new [EvaluationJobEvaluationConfigHumanHumanWorkflowConfig].
  /// [flowDefinitionArn] ARN of the Amazon SageMaker AI flow definition.
  /// [instructions] Instructions for the flow definition.
  const EvaluationJobEvaluationConfigHumanHumanWorkflowConfig({
    required this.flowDefinitionArn,
    this.instructions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flowDefinitionArn': flowDefinitionArn,
      'instructions': ?instructions,
    };
  }

  factory EvaluationJobEvaluationConfigHumanHumanWorkflowConfig.fromMap(Map<String, dynamic> map) {
    return EvaluationJobEvaluationConfigHumanHumanWorkflowConfig(
      flowDefinitionArn: pulumi.Input.fromValue(map['flowDefinitionArn'] as String),
      instructions: (() { final guardedValue = map['instructions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
