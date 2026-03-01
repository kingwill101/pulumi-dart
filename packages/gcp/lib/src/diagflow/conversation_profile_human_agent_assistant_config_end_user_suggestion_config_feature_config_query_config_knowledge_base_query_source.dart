// ignore_for_file: unused_element, unnecessary_cast

class ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigKnowledgeBaseQuerySource {
  /// Knowledge bases to query. Format: projects/<Project ID>/locations/<Location ID>/knowledgeBases/<Knowledge Base ID>.
  final List<String> knowledgeBases;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigKnowledgeBaseQuerySource].
  /// [knowledgeBases] Knowledge bases to query. Format: projects/<Project ID>/locations/<Location ID>/knowledgeBases/<Knowledge Base ID>.
  ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigKnowledgeBaseQuerySource({
    required this.knowledgeBases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'knowledgeBases': knowledgeBases};
  }

  factory ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigKnowledgeBaseQuerySource.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigKnowledgeBaseQuerySource(
      knowledgeBases: (map['knowledgeBases'] as List).cast<String>(),
    );
  }
}
