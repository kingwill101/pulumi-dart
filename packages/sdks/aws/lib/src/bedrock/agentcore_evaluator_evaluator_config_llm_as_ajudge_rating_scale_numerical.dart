// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleNumerical {
  /// Description that explains what this numerical rating represents.
  final pulumi.Input<String> definition;
  /// Label for this numerical rating option. Length 1–100.
  final pulumi.Input<String> label;
  /// Numerical value for this rating option. Must be at least 0.
  final pulumi.Input<double> value;

  /// Creates a new [AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleNumerical].
  /// [definition] Description that explains what this numerical rating represents.
  /// [label] Label for this numerical rating option. Length 1–100.
  /// [value] Numerical value for this rating option. Must be at least 0.
  const AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleNumerical({
    required this.definition,
    required this.label,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': definition,
      'label': label,
      'value': value,
    };
  }

  factory AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleNumerical.fromMap(Map<String, dynamic> map) {
    return AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleNumerical(
      definition: pulumi.Input.fromValue(map['definition'] as String),
      label: pulumi.Input.fromValue(map['label'] as String),
      value: pulumi.Input.fromValue(map['value'] as double),
    );
  }
}
