// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for analyses to run on each conversation message.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfigResponse {
  /// Enable entity extraction in conversation messages on [agent assist stage](https://cloud.google.com/dialogflow/priv/docs/contact-center/basics#stages). If unspecified, defaults to false. Currently, this feature is not general available, please contact Google to get access.
  final bool enableEntityExtraction;

  /// Enable sentiment analysis in conversation messages on [agent assist stage](https://cloud.google.com/dialogflow/priv/docs/contact-center/basics#stages). If unspecified, defaults to false. Sentiment analysis inspects user input and identifies the prevailing subjective opinion, especially to determine a user's attitude as positive, negative, or neutral: https://cloud.google.com/natural-language/docs/basics#sentiment_analysis For Participants.StreamingAnalyzeContent method, result will be in StreamingAnalyzeContentResponse.message.SentimentAnalysisResult. For Participants.AnalyzeContent method, result will be in AnalyzeContentResponse.message.SentimentAnalysisResult For Conversations.ListMessages method, result will be in ListMessagesResponse.messages.SentimentAnalysisResult If Pub/Sub notification is configured, result will be in ConversationEvent.new_message_payload.SentimentAnalysisResult.
  final bool enableSentimentAnalysis;

  /// Creates a new [GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfigResponse].
  /// [enableEntityExtraction] Enable entity extraction in conversation messages on [agent assist stage](https://cloud.google.com/dialogflow/priv/docs/contact-center/basics#stages). If unspecified, defaults to false. Currently, this feature is not general available, please contact Google to get access.
  /// [enableSentimentAnalysis] Enable sentiment analysis in conversation messages on [agent assist stage](https://cloud.google.com/dialogflow/priv/docs/contact-center/basics#stages). If unspecified, defaults to false. Sentiment analysis inspects user input and identifies the prevailing subjective opinion, especially to determine a user's attitude as positive, negative, or neutral: https://cloud.google.com/natural-language/docs/basics#sentiment_analysis For Participants.StreamingAnalyzeContent method, result will be in StreamingAnalyzeContentResponse.message.SentimentAnalysisResult. For Participants.AnalyzeContent method, result will be in AnalyzeContentResponse.message.SentimentAnalysisResult For Conversations.ListMessages method, result will be in ListMessagesResponse.messages.SentimentAnalysisResult If Pub/Sub notification is configured, result will be in ConversationEvent.new_message_payload.SentimentAnalysisResult.
  GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfigResponse({
    required this.enableEntityExtraction,
    required this.enableSentimentAnalysis,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableEntityExtraction'] = enableEntityExtraction;
    map['enableSentimentAnalysis'] = enableSentimentAnalysis;
    return map;
  }

  factory GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfigResponse(
      enableEntityExtraction: map['enableEntityExtraction'] as bool,
      enableSentimentAnalysis: map['enableSentimentAnalysis'] as bool,
    );
  }
}
