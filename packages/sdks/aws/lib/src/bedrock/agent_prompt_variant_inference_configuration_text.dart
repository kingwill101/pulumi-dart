// ignore_for_file: unused_element, unnecessary_cast


class AgentPromptVariantInferenceConfigurationText {
  /// Maximum number of tokens to return in the response.
  final int? maxTokens;
  /// List of strings that define sequences after which the model will stop generating.
  final List<String>? stopSequences;
  /// Controls the randomness of the response. Choose a lower value for more predictable outputs and a higher value for more surprising outputs.
  final double? temperature;
  /// Percentage of most-likely candidates that the model considers for the next token.
  final double? topP;

  /// Creates a new [AgentPromptVariantInferenceConfigurationText].
  /// [maxTokens] Maximum number of tokens to return in the response.
  /// [stopSequences] List of strings that define sequences after which the model will stop generating.
  /// [temperature] Controls the randomness of the response. Choose a lower value for more predictable outputs and a higher value for more surprising outputs.
  /// [topP] Percentage of most-likely candidates that the model considers for the next token.
  AgentPromptVariantInferenceConfigurationText({
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

  factory AgentPromptVariantInferenceConfigurationText.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantInferenceConfigurationText(
      maxTokens: map['maxTokens'] == null ? null : map['maxTokens'] as int,
      stopSequences: map['stopSequences'] == null ? null : (map['stopSequences'] as List).cast<String>(),
      temperature: map['temperature'] == null ? null : map['temperature'] as double,
      topP: map['topP'] == null ? null : map['topP'] as double,
    );
  }
}

