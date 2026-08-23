// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategorical {
  /// Description that explains what this categorical rating represents.
  final pulumi.Input<String> definition;
  /// Label for this categorical rating option. Length 1–100.
  final pulumi.Input<String> label;

  /// Creates a new [AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategorical].
  /// [definition] Description that explains what this categorical rating represents.
  /// [label] Label for this categorical rating option. Length 1–100.
  const AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategorical({
    required this.definition,
    required this.label,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': definition,
      'label': label,
    };
  }

  factory AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategorical.fromMap(Map<String, dynamic> map) {
    return AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategorical(
      definition: pulumi.Input.fromValue(map['definition'] as String),
      label: pulumi.Input.fromValue(map['label'] as String),
    );
  }
}
