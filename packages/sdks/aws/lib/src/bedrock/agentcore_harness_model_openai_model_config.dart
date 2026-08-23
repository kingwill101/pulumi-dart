// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessModelOpenaiModelConfig {
  /// ARN of the secret containing the API key.
  final pulumi.Input<String> apiKeyArn;
  /// Maximum number of tokens to generate.
  final pulumi.Input<int>? maxTokens;
  /// OpenAI model ID.
  final pulumi.Input<String> modelId;
  /// Temperature for sampling.
  final pulumi.Input<double>? temperature;
  /// Top-p sampling parameter.
  final pulumi.Input<double>? topP;

  /// Creates a new [AgentcoreHarnessModelOpenaiModelConfig].
  /// [apiKeyArn] ARN of the secret containing the API key.
  /// [maxTokens] Maximum number of tokens to generate.
  /// [modelId] OpenAI model ID.
  /// [temperature] Temperature for sampling.
  /// [topP] Top-p sampling parameter.
  const AgentcoreHarnessModelOpenaiModelConfig({
    required this.apiKeyArn,
    this.maxTokens,
    required this.modelId,
    this.temperature,
    this.topP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyArn': apiKeyArn,
      'maxTokens': ?maxTokens,
      'modelId': modelId,
      'temperature': ?temperature,
      'topP': ?topP,
    };
  }

  factory AgentcoreHarnessModelOpenaiModelConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessModelOpenaiModelConfig(
      apiKeyArn: pulumi.Input.fromValue(map['apiKeyArn'] as String),
      maxTokens: (() { final guardedValue = map['maxTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      modelId: pulumi.Input.fromValue(map['modelId'] as String),
      temperature: (() { final guardedValue = map['temperature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      topP: (() { final guardedValue = map['topP']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
