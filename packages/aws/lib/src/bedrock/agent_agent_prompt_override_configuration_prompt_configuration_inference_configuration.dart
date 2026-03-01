// ignore_for_file: unused_element, unnecessary_cast

class AgentAgentPromptOverrideConfigurationPromptConfigurationInferenceConfiguration {
  /// Maximum number of tokens to allow in the generated response.
  final int maxLength;

  /// List of stop sequences. A stop sequence is a sequence of characters that causes the model to stop generating the response.
  final List<String> stopSequences;

  /// Likelihood of the model selecting higher-probability options while generating a response. A lower value makes the model more likely to choose higher-probability options, while a higher value makes the model more likely to choose lower-probability options.
  final double temperature;

  /// Number of top most-likely candidates, between 0 and 500, from which the model chooses the next token in the sequence.
  final int topK;

  /// Top percentage of the probability distribution of next tokens, between 0 and 1 (denoting 0% and 100%), from which the model chooses the next token in the sequence.
  final double topP;

  /// Creates a new [AgentAgentPromptOverrideConfigurationPromptConfigurationInferenceConfiguration].
  /// [maxLength] Maximum number of tokens to allow in the generated response.
  /// [stopSequences] List of stop sequences. A stop sequence is a sequence of characters that causes the model to stop generating the response.
  /// [temperature] Likelihood of the model selecting higher-probability options while generating a response. A lower value makes the model more likely to choose higher-probability options, while a higher value makes the model more likely to choose lower-probability options.
  /// [topK] Number of top most-likely candidates, between 0 and 500, from which the model chooses the next token in the sequence.
  /// [topP] Top percentage of the probability distribution of next tokens, between 0 and 1 (denoting 0% and 100%), from which the model chooses the next token in the sequence.
  AgentAgentPromptOverrideConfigurationPromptConfigurationInferenceConfiguration({
    required this.maxLength,
    required this.stopSequences,
    required this.temperature,
    required this.topK,
    required this.topP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxLength': maxLength,
      'stopSequences': stopSequences,
      'temperature': temperature,
      'topK': topK,
      'topP': topP,
    };
  }

  factory AgentAgentPromptOverrideConfigurationPromptConfigurationInferenceConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentAgentPromptOverrideConfigurationPromptConfigurationInferenceConfiguration(
      maxLength: map['maxLength'] as int,
      stopSequences: (map['stopSequences'] as List).cast<String>(),
      temperature: map['temperature'] as double,
      topK: map['topK'] as int,
      topP: map['topP'] as double,
    );
  }
}
