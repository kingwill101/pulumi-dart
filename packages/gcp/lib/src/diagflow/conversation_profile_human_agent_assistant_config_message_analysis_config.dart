// ignore_for_file: unused_element, unnecessary_cast


class ConversationProfileHumanAgentAssistantConfigMessageAnalysisConfig {
  /// Enable entity extraction in conversation messages on agent assist stage.
  final bool? enableEntityExtraction;
  /// Enable sentiment analysis in conversation messages on agent assist stage. Sentiment analysis inspects user input and identifies the prevailing subjective opinion, especially to determine a user's attitude as positive, negative, or neutral.
  final bool? enableSentimentAnalysis;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigMessageAnalysisConfig].
  /// [enableEntityExtraction] Enable entity extraction in conversation messages on agent assist stage.
  /// [enableSentimentAnalysis] Enable sentiment analysis in conversation messages on agent assist stage. Sentiment analysis inspects user input and identifies the prevailing subjective opinion, especially to determine a user's attitude as positive, negative, or neutral.
  ConversationProfileHumanAgentAssistantConfigMessageAnalysisConfig({
    this.enableEntityExtraction,
    this.enableSentimentAnalysis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableEntityExtraction': ?enableEntityExtraction,
      'enableSentimentAnalysis': ?enableSentimentAnalysis,
    };
  }

  factory ConversationProfileHumanAgentAssistantConfigMessageAnalysisConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfigMessageAnalysisConfig(
      enableEntityExtraction: map['enableEntityExtraction'] == null ? null : map['enableEntityExtraction'] as bool,
      enableSentimentAnalysis: map['enableSentimentAnalysis'] == null ? null : map['enableSentimentAnalysis'] as bool,
    );
  }
}

