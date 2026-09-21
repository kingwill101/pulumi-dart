// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessModelLitellmModelConfig {
  /// JSON string containing provider-specific parameters to pass through to the LiteLLM model provider unchanged.
  final pulumi.Input<String?>? additionalParams;
  /// Base URL of the LiteLLM-compatible API endpoint.
  final pulumi.Input<String?>? apiBase;
  /// ARN of the secret containing the API key.
  final pulumi.Input<String?>? apiKeyArn;
  /// Maximum number of tokens to generate.
  final pulumi.Input<int?>? maxTokens;
  /// LiteLLM model ID.
  final pulumi.Input<String> modelId;
  /// Temperature for sampling. Must be between 0 and 2.
  final pulumi.Input<double?>? temperature;
  /// Top-p sampling parameter. Must be between 0 and 1.
  final pulumi.Input<double?>? topP;

  /// Creates a new [AgentcoreHarnessModelLitellmModelConfig].
  /// [additionalParams] JSON string containing provider-specific parameters to pass through to the LiteLLM model provider unchanged.
  /// [apiBase] Base URL of the LiteLLM-compatible API endpoint.
  /// [apiKeyArn] ARN of the secret containing the API key.
  /// [maxTokens] Maximum number of tokens to generate.
  /// [modelId] LiteLLM model ID.
  /// [temperature] Temperature for sampling. Must be between 0 and 2.
  /// [topP] Top-p sampling parameter. Must be between 0 and 1.
  const AgentcoreHarnessModelLitellmModelConfig({
    this.additionalParams,
    this.apiBase,
    this.apiKeyArn,
    this.maxTokens,
    required this.modelId,
    this.temperature,
    this.topP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalParams': ?additionalParams,
      'apiBase': ?apiBase,
      'apiKeyArn': ?apiKeyArn,
      'maxTokens': ?maxTokens,
      'modelId': modelId,
      'temperature': ?temperature,
      'topP': ?topP,
    };
  }

  factory AgentcoreHarnessModelLitellmModelConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessModelLitellmModelConfig(
      additionalParams: (() { final guardedValue = map['additionalParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiBase: (() { final guardedValue = map['apiBase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiKeyArn: (() { final guardedValue = map['apiKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxTokens: (() { final guardedValue = map['maxTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      modelId: pulumi.Input.fromValue(map['modelId'] as String),
      temperature: (() { final guardedValue = map['temperature']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      topP: (() { final guardedValue = map['topP']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
