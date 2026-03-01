// ignore_for_file: unused_element, unnecessary_cast

class ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigSuggestionFeature {
  /// Type of Human Agent Assistant API feature to request.
  final String? type;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigSuggestionFeature].
  /// [type] Type of Human Agent Assistant API feature to request.
  ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigSuggestionFeature({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': ?type};
  }

  factory ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigSuggestionFeature.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigSuggestionFeature(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
