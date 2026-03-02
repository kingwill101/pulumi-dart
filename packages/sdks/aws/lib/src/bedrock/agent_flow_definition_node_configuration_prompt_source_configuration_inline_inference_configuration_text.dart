// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfigurationText {
  /// Maximum number of tokens to return in the response.
  final pulumi.Input<int>? maxTokens;
  /// List of strings that define sequences after which the model will stop generating.
  final pulumi.Input<List<String>>? stopSequences;
  /// Controls the randomness of the response. Choose a lower value for more predictable outputs and a higher value for more surprising outputs.
  final pulumi.Input<double>? temperature;
  /// Percentage of most-likely candidates that the model considers for the next token.
  final pulumi.Input<double>? topP;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfigurationText].
  /// [maxTokens] Maximum number of tokens to return in the response.
  /// [stopSequences] List of strings that define sequences after which the model will stop generating.
  /// [temperature] Controls the randomness of the response. Choose a lower value for more predictable outputs and a higher value for more surprising outputs.
  /// [topP] Percentage of most-likely candidates that the model considers for the next token.
  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfigurationText({
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

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfigurationText.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfigurationText(
      maxTokens: map['maxTokens'] == null ? null : ((map['maxTokens'] as int).input()).input(),
      stopSequences: map['stopSequences'] == null ? null : (((map['stopSequences'] as List).cast<String>()).input()).input(),
      temperature: map['temperature'] == null ? null : ((map['temperature'] as double).input()).input(),
      topP: map['topP'] == null ? null : ((map['topP'] as double).input()).input(),
    );
  }
}

