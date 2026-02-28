// ignore_for_file: unused_element, unnecessary_cast

class AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfigurationText {
  /// Maximum number of tokens to return in the response.
  final int? maxTokens;

  /// List of strings that define sequences after which the model will stop generating.
  final List<String>? stopSequences;

  /// Controls the randomness of the response. Choose a lower value for more predictable outputs and a higher value for more surprising outputs.
  final double? temperature;

  /// Percentage of most-likely candidates that the model considers for the next token.
  final double? topP;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfigurationText].
  /// [maxTokens] Maximum number of tokens to return in the response.
  /// [stopSequences] List of strings that define sequences after which the model will stop generating.
  /// [temperature] Controls the randomness of the response. Choose a lower value for more predictable outputs and a higher value for more surprising outputs.
  /// [topP] Percentage of most-likely candidates that the model considers for the next token.
  AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfigurationText({
    this.maxTokens,
    this.stopSequences,
    this.temperature,
    this.topP,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxTokensValue = maxTokens;
    if (maxTokensValue != null) {
      map['maxTokens'] = maxTokensValue;
    }
    final stopSequencesValue = stopSequences;
    if (stopSequencesValue != null) {
      map['stopSequences'] = stopSequencesValue;
    }
    final temperatureValue = temperature;
    if (temperatureValue != null) {
      map['temperature'] = temperatureValue;
    }
    final topPValue = topP;
    if (topPValue != null) {
      map['topP'] = topPValue;
    }
    return map;
  }

  factory AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfigurationText.fromMap(
      Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfigurationText(
      maxTokens: map['maxTokens'] == null ? null : map['maxTokens'] as int,
      stopSequences: map['stopSequences'] == null
          ? null
          : (map['stopSequences'] as List).cast<String>(),
      temperature:
          map['temperature'] == null ? null : map['temperature'] as double,
      topP: map['topP'] == null ? null : map['topP'] as double,
    );
  }
}
