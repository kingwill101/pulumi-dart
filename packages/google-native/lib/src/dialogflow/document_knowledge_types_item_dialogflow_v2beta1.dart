enum DocumentKnowledgeTypesItemDialogflowV2beta1 {
  knowledgeTypeUnspecified("KNOWLEDGE_TYPE_UNSPECIFIED"),
  faq("FAQ"),
  extractiveQa("EXTRACTIVE_QA"),
  articleSuggestion("ARTICLE_SUGGESTION"),
  agentFacingSmartReply("AGENT_FACING_SMART_REPLY"),
  smartReply("SMART_REPLY");

  const DocumentKnowledgeTypesItemDialogflowV2beta1(this.value);
  final String value;

  static DocumentKnowledgeTypesItemDialogflowV2beta1 fromValue(String value) {
    for (final item in DocumentKnowledgeTypesItemDialogflowV2beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown DocumentKnowledgeTypesItemDialogflowV2beta1 value: $value',
    );
  }
}
