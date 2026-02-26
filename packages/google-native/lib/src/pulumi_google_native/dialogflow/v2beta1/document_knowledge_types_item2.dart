enum DocumentKnowledgeTypesItem2 {
  knowledgeTypeUnspecified("KNOWLEDGE_TYPE_UNSPECIFIED"),
  faq("FAQ"),
  extractiveQa("EXTRACTIVE_QA"),
  articleSuggestion("ARTICLE_SUGGESTION"),
  agentFacingSmartReply("AGENT_FACING_SMART_REPLY"),
  smartReply("SMART_REPLY");

  const DocumentKnowledgeTypesItem2(this.value);
  final String value;

  static DocumentKnowledgeTypesItem2 fromValue(String value) {
    for (final item in DocumentKnowledgeTypesItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DocumentKnowledgeTypesItem2 value: $value');
  }
}
