// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_evaluator_evaluator_config_llm_as_ajudge_model_config_bedrock_evaluator_model_config_inference_config.dart';

class AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfig {
  /// JSON-encoded model-specific request fields, for settings not covered by `inferenceConfig`.
  final pulumi.Input<String?>? additionalModelRequestFields;
  /// Settings that control how the model generates its response. See `inferenceConfig` below.
  final pulumi.Input<AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfigInferenceConfig?>? inferenceConfig;
  /// Identifier of the Amazon Bedrock model to use for evaluation.
  final pulumi.Input<String> modelId;

  /// Creates a new [AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfig].
  /// [additionalModelRequestFields] JSON-encoded model-specific request fields, for settings not covered by `inferenceConfig`.
  /// [inferenceConfig] Settings that control how the model generates its response. See `inferenceConfig` below.
  /// [modelId] Identifier of the Amazon Bedrock model to use for evaluation.
  const AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfig({
    this.additionalModelRequestFields,
    this.inferenceConfig,
    required this.modelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalModelRequestFields': ?additionalModelRequestFields,
      'inferenceConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfigInferenceConfig, Map<String, dynamic>>(inferenceConfig, (value) => value.toMap()),
      'modelId': modelId,
    };
  }

  factory AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfig(
      additionalModelRequestFields: (() { final guardedValue = map['additionalModelRequestFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inferenceConfig: (() { final guardedValue = map['inferenceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfigInferenceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modelId: pulumi.Input.fromValue(map['modelId'] as String),
    );
  }
}
