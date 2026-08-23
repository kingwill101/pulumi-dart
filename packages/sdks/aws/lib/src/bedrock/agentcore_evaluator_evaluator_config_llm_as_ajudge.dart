// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_evaluator_evaluator_config_llm_as_ajudge_model_config.dart';
import 'agentcore_evaluator_evaluator_config_llm_as_ajudge_rating_scale.dart';

class AgentcoreEvaluatorEvaluatorConfigLlmAsAJudge {
  /// Instructions that tell the model how to score the agent.
  final pulumi.Input<String> instructions;
  /// Which Bedrock model to use. See `modelConfig` below.
  final pulumi.Input<AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfig> modelConfig;
  /// Scale used to score the agent. See `ratingScale` below.
  final pulumi.Input<AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScale> ratingScale;

  /// Creates a new [AgentcoreEvaluatorEvaluatorConfigLlmAsAJudge].
  /// [instructions] Instructions that tell the model how to score the agent.
  /// [modelConfig] Which Bedrock model to use. See `modelConfig` below.
  /// [ratingScale] Scale used to score the agent. See `ratingScale` below.
  const AgentcoreEvaluatorEvaluatorConfigLlmAsAJudge({
    required this.instructions,
    required this.modelConfig,
    required this.ratingScale,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instructions': instructions,
      'modelConfig': pulumi.Input.mapInputValue<AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfig, Map<String, dynamic>>(modelConfig, (value) => value.toMap()),
      'ratingScale': pulumi.Input.mapInputValue<AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScale, Map<String, dynamic>>(ratingScale, (value) => value.toMap()),
    };
  }

  factory AgentcoreEvaluatorEvaluatorConfigLlmAsAJudge.fromMap(Map<String, dynamic> map) {
    return AgentcoreEvaluatorEvaluatorConfigLlmAsAJudge(
      instructions: pulumi.Input.fromValue(map['instructions'] as String),
      modelConfig: pulumi.Input.fromValue(AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfig.fromMap((map['modelConfig']! as Map).cast<String, dynamic>())),
      ratingScale: pulumi.Input.fromValue(AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeRatingScale.fromMap((map['ratingScale']! as Map).cast<String, dynamic>())),
    );
  }
}
