// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessModelGeminiModelConfig {
  /// JSON string containing provider-specific parameters to pass through to the Gemini model provider unchanged.
  final pulumi.Input<String?>? additionalParams;
  /// ARN of the secret containing the API key.
  final pulumi.Input<String> apiKeyArn;
  /// Maximum number of tokens to generate.
  final pulumi.Input<int?>? maxTokens;
  /// Gemini model ID.
  final pulumi.Input<String> modelId;
  /// Temperature for sampling.
  final pulumi.Input<double?>? temperature;
  /// Top-k sampling parameter.
  final pulumi.Input<int?>? topK;
  /// Top-p sampling parameter.
  final pulumi.Input<double?>? topP;

  /// Creates a new [AgentcoreHarnessModelGeminiModelConfig].
  /// [additionalParams] JSON string containing provider-specific parameters to pass through to the Gemini model provider unchanged.
  /// [apiKeyArn] ARN of the secret containing the API key.
  /// [maxTokens] Maximum number of tokens to generate.
  /// [modelId] Gemini model ID.
  /// [temperature] Temperature for sampling.
  /// [topK] Top-k sampling parameter.
  /// [topP] Top-p sampling parameter.
  const AgentcoreHarnessModelGeminiModelConfig({
    this.additionalParams,
    required this.apiKeyArn,
    this.maxTokens,
    required this.modelId,
    this.temperature,
    this.topK,
    this.topP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalParams': ?additionalParams,
      'apiKeyArn': apiKeyArn,
      'maxTokens': ?maxTokens,
      'modelId': modelId,
      'temperature': ?temperature,
      'topK': ?topK,
      'topP': ?topP,
    };
  }

  factory AgentcoreHarnessModelGeminiModelConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessModelGeminiModelConfig(
      additionalParams: (() { final guardedValue = map['additionalParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiKeyArn: pulumi.Input.fromValue(map['apiKeyArn'] as String),
      maxTokens: (() { final guardedValue = map['maxTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      modelId: pulumi.Input.fromValue(map['modelId'] as String),
      temperature: (() { final guardedValue = map['temperature']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      topK: (() { final guardedValue = map['topK']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      topP: (() { final guardedValue = map['topP']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
