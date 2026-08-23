// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_evaluator_evaluator_config_llm_as_ajudge_model_config_bedrock_evaluator_model_config.dart';

class AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfig {
  /// Amazon Bedrock model configuration. See `bedrockEvaluatorModelConfig` below.
  final pulumi.Input<AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfig>? bedrockEvaluatorModelConfig;

  /// Creates a new [AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfig].
  /// [bedrockEvaluatorModelConfig] Amazon Bedrock model configuration. See `bedrockEvaluatorModelConfig` below.
  const AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfig({
    this.bedrockEvaluatorModelConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bedrockEvaluatorModelConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfig, Map<String, dynamic>>(bedrockEvaluatorModelConfig, (value) => value.toMap()),
    };
  }

  factory AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfig(
      bedrockEvaluatorModelConfig: (() { final guardedValue = map['bedrockEvaluatorModelConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
