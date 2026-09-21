// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessModelBedrockModelConfig {
  /// JSON string containing provider-specific parameters to pass through to the Bedrock model provider unchanged.
  final pulumi.Input<String?>? additionalParams;
  /// API format for the model. Valid values are `converseStream`, `responses`, and `chatCompletions`.
  final pulumi.Input<String?>? apiFormat;
  /// Maximum number of tokens to generate.
  final pulumi.Input<int?>? maxTokens;
  /// Bedrock model ID (e.g., `anthropic.claude-sonnet-4-20250514`).
  final pulumi.Input<String> modelId;
  /// Temperature for sampling. Must be between 0 and 2.
  final pulumi.Input<double?>? temperature;
  /// Top-p (nucleus) sampling parameter. Must be between 0 and 1.
  final pulumi.Input<double?>? topP;

  /// Creates a new [AgentcoreHarnessModelBedrockModelConfig].
  /// [additionalParams] JSON string containing provider-specific parameters to pass through to the Bedrock model provider unchanged.
  /// [apiFormat] API format for the model. Valid values are `converseStream`, `responses`, and `chatCompletions`.
  /// [maxTokens] Maximum number of tokens to generate.
  /// [modelId] Bedrock model ID (e.g., `anthropic.claude-sonnet-4-20250514`).
  /// [temperature] Temperature for sampling. Must be between 0 and 2.
  /// [topP] Top-p (nucleus) sampling parameter. Must be between 0 and 1.
  const AgentcoreHarnessModelBedrockModelConfig({
    this.additionalParams,
    this.apiFormat,
    this.maxTokens,
    required this.modelId,
    this.temperature,
    this.topP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalParams': ?additionalParams,
      'apiFormat': ?apiFormat,
      'maxTokens': ?maxTokens,
      'modelId': modelId,
      'temperature': ?temperature,
      'topP': ?topP,
    };
  }

  factory AgentcoreHarnessModelBedrockModelConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessModelBedrockModelConfig(
      additionalParams: (() { final guardedValue = map['additionalParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiFormat: (() { final guardedValue = map['apiFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxTokens: (() { final guardedValue = map['maxTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      modelId: pulumi.Input.fromValue(map['modelId'] as String),
      temperature: (() { final guardedValue = map['temperature']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      topP: (() { final guardedValue = map['topP']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
