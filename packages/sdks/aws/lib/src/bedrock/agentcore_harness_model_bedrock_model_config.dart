// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessModelBedrockModelConfig {
  /// Maximum number of tokens to generate.
  final pulumi.Input<int>? maxTokens;
  /// Bedrock model ID (e.g., `anthropic.claude-sonnet-4-20250514`).
  final pulumi.Input<String> modelId;
  /// Temperature for sampling. Must be between 0 and 2.
  final pulumi.Input<double>? temperature;
  /// Top-p (nucleus) sampling parameter. Must be between 0 and 1.
  final pulumi.Input<double>? topP;

  /// Creates a new [AgentcoreHarnessModelBedrockModelConfig].
  /// [maxTokens] Maximum number of tokens to generate.
  /// [modelId] Bedrock model ID (e.g., `anthropic.claude-sonnet-4-20250514`).
  /// [temperature] Temperature for sampling. Must be between 0 and 2.
  /// [topP] Top-p (nucleus) sampling parameter. Must be between 0 and 1.
  const AgentcoreHarnessModelBedrockModelConfig({
    this.maxTokens,
    required this.modelId,
    this.temperature,
    this.topP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxTokens': ?maxTokens,
      'modelId': modelId,
      'temperature': ?temperature,
      'topP': ?topP,
    };
  }

  factory AgentcoreHarnessModelBedrockModelConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessModelBedrockModelConfig(
      maxTokens: (() { final guardedValue = map['maxTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      modelId: pulumi.Input.fromValue(map['modelId'] as String),
      temperature: (() { final guardedValue = map['temperature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      topP: (() { final guardedValue = map['topP']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
