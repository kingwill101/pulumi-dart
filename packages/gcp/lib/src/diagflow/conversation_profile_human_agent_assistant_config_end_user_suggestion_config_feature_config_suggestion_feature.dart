// ignore_for_file: unused_element, unnecessary_cast

class ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigSuggestionFeature {
  /// Type of Human Agent Assistant API feature to request.
  final String? type;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigSuggestionFeature].
  /// [type] Type of Human Agent Assistant API feature to request.
  ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigSuggestionFeature({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': ?type};
  }

  factory ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigSuggestionFeature.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigSuggestionFeature(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
