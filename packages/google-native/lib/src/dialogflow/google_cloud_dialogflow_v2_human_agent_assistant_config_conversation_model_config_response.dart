// ignore_for_file: unused_element, unnecessary_cast


/// Custom conversation models used in agent assist feature. Supported feature: ARTICLE_SUGGESTION, SMART_COMPOSE, SMART_REPLY, CONVERSATION_SUMMARIZATION.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfigResponse {
  /// Version of current baseline model. It will be ignored if model is set. Valid versions are: Article Suggestion baseline model: - 0.9 - 1.0 (default) Summarization baseline model: - 1.0
  final String baselineModelVersion;
  /// Conversation model resource name. Format: `projects//conversationModels/`.
  final String model;

  /// Creates a new [GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfigResponse].
  /// [baselineModelVersion] Version of current baseline model. It will be ignored if model is set. Valid versions are: Article Suggestion baseline model: - 0.9 - 1.0 (default) Summarization baseline model: - 1.0
  /// [model] Conversation model resource name. Format: `projects//conversationModels/`.
  GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfigResponse({
    required this.baselineModelVersion,
    required this.model,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselineModelVersion': baselineModelVersion,
      'model': model,
    };
  }

  factory GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfigResponse(
      baselineModelVersion: map['baselineModelVersion'] as String,
      model: map['model'] as String,
    );
  }
}

