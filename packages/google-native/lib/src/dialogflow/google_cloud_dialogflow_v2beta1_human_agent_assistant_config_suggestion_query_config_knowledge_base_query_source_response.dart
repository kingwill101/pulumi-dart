// ignore_for_file: unused_element, unnecessary_cast


/// Knowledge base source settings. Supported features: ARTICLE_SUGGESTION, FAQ.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySourceResponse {
  /// Knowledge bases to query. Format: `projects//locations//knowledgeBases/`. Currently, only one knowledge base is supported.
  final List<String> knowledgeBases;

  /// Creates a new [GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySourceResponse].
  /// [knowledgeBases] Knowledge bases to query. Format: `projects//locations//knowledgeBases/`. Currently, only one knowledge base is supported.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySourceResponse({
    required this.knowledgeBases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'knowledgeBases': knowledgeBases,
    };
  }

  factory GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySourceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySourceResponse(
      knowledgeBases: (map['knowledgeBases'] as List).cast<String>(),
    );
  }
}

