// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_evaluator_evaluator_config_llm_as_ajudge_rating_scale_categorical.dart';
import 'agentcore_evaluator_evaluator_config_llm_as_ajudge_rating_scale_numerical.dart';

class AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScale {
  /// One or more categorical rating scale definitions. See `categorical` below.
  final pulumi.Input<List<AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategorical>?>? categoricals;
  /// One or more numerical rating scale definitions. See `numerical` below.
  final pulumi.Input<List<AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleNumerical>?>? numericals;

  /// Creates a new [AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScale].
  /// [categoricals] One or more categorical rating scale definitions. See `categorical` below.
  /// [numericals] One or more numerical rating scale definitions. See `numerical` below.
  const AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScale({
    this.categoricals,
    this.numericals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoricals': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategorical>, List<Map<String, dynamic>>>(categoricals, (value) => pulumi.Input.encodeList<AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategorical, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numericals': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleNumerical>, List<Map<String, dynamic>>>(numericals, (value) => pulumi.Input.encodeList<AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleNumerical, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScale.fromMap(Map<String, dynamic> map) {
    return AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScale(
      categoricals: (() { final guardedValue = map['categoricals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategorical>(guardedValue, (value) => AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleCategorical.fromMap((value as Map).cast<String, dynamic>()))); })(),
      numericals: (() { final guardedValue = map['numericals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleNumerical>(guardedValue, (value) => AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScaleNumerical.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
