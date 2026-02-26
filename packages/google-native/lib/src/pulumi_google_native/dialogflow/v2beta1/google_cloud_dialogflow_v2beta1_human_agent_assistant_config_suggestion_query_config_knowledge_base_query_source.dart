// ignore_for_file: unused_element, unnecessary_cast

/// Knowledge base source settings. Supported features: ARTICLE_SUGGESTION, FAQ.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource {
  /// Knowledge bases to query. Format: `projects//locations//knowledgeBases/`. Currently, only one knowledge base is supported.
  final List<String> knowledgeBases;

  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource({
    required this.knowledgeBases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['knowledgeBases'] = knowledgeBases;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource(
      knowledgeBases: (map['knowledgeBases'] as List).cast<String>(),
    );
  }
}
