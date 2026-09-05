// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfigInferenceConfig {
  /// Maximum number of tokens to generate in the model response. Must be at least 1.
  final pulumi.Input<int?>? maxTokens;
  /// List of sequences that cause the model to stop generating tokens.
  final pulumi.Input<List<String>?>? stopSequences;
  /// Temperature value that controls randomness. Range 0–1.
  final pulumi.Input<double?>? temperature;
  /// Top-p sampling parameter. Range 0–1.
  final pulumi.Input<double?>? topP;

  /// Creates a new [AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfigInferenceConfig].
  /// [maxTokens] Maximum number of tokens to generate in the model response. Must be at least 1.
  /// [stopSequences] List of sequences that cause the model to stop generating tokens.
  /// [temperature] Temperature value that controls randomness. Range 0–1.
  /// [topP] Top-p sampling parameter. Range 0–1.
  const AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfigInferenceConfig({
    this.maxTokens,
    this.stopSequences,
    this.temperature,
    this.topP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxTokens': ?maxTokens,
      'stopSequences': ?stopSequences,
      'temperature': ?temperature,
      'topP': ?topP,
    };
  }

  factory AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfigInferenceConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreEvaluatorEvaluatorConfigLlmAsAJudgeModelConfigBedrockEvaluatorModelConfigInferenceConfig(
      maxTokens: (() { final guardedValue = map['maxTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      stopSequences: (() { final guardedValue = map['stopSequences']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      temperature: (() { final guardedValue = map['temperature']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      topP: (() { final guardedValue = map['topP']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
