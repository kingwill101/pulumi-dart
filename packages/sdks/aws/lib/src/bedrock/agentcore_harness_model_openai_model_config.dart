// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessModelOpenaiModelConfig {
  /// JSON string containing provider-specific parameters to pass through to the OpenAI model provider unchanged.
  final pulumi.Input<String?>? additionalParams;
  /// API format for the model. Valid values are `responses` and `chatCompletions`.
  final pulumi.Input<String?>? apiFormat;
  /// ARN of the secret containing the API key.
  final pulumi.Input<String> apiKeyArn;
  /// Maximum number of tokens to generate.
  final pulumi.Input<int?>? maxTokens;
  /// OpenAI model ID.
  final pulumi.Input<String> modelId;
  /// Temperature for sampling.
  final pulumi.Input<double?>? temperature;
  /// Top-p sampling parameter.
  final pulumi.Input<double?>? topP;

  /// Creates a new [AgentcoreHarnessModelOpenaiModelConfig].
  /// [additionalParams] JSON string containing provider-specific parameters to pass through to the OpenAI model provider unchanged.
  /// [apiFormat] API format for the model. Valid values are `responses` and `chatCompletions`.
  /// [apiKeyArn] ARN of the secret containing the API key.
  /// [maxTokens] Maximum number of tokens to generate.
  /// [modelId] OpenAI model ID.
  /// [temperature] Temperature for sampling.
  /// [topP] Top-p sampling parameter.
  const AgentcoreHarnessModelOpenaiModelConfig({
    this.additionalParams,
    this.apiFormat,
    required this.apiKeyArn,
    this.maxTokens,
    required this.modelId,
    this.temperature,
    this.topP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalParams': ?additionalParams,
      'apiFormat': ?apiFormat,
      'apiKeyArn': apiKeyArn,
      'maxTokens': ?maxTokens,
      'modelId': modelId,
      'temperature': ?temperature,
      'topP': ?topP,
    };
  }

  factory AgentcoreHarnessModelOpenaiModelConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessModelOpenaiModelConfig(
      additionalParams: (() { final guardedValue = map['additionalParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiFormat: (() { final guardedValue = map['apiFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiKeyArn: pulumi.Input.fromValue(map['apiKeyArn'] as String),
      maxTokens: (() { final guardedValue = map['maxTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      modelId: pulumi.Input.fromValue(map['modelId'] as String),
      temperature: (() { final guardedValue = map['temperature']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      topP: (() { final guardedValue = map['topP']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
