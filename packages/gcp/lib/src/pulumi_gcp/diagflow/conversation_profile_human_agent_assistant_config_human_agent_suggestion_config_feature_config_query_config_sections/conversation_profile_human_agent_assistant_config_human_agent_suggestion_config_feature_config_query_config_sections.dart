// ignore_for_file: unused_element, unnecessary_cast

class ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigSections {
  /// The selected sections chosen to return when requesting a summary of a conversation
  /// If not provided the default selection will be "{SITUATION, ACTION, RESULT}".
  /// Each value may be one of: `SECTION_TYPE_UNSPECIFIED`, `SITUATION`, `ACTION`, `RESOLUTION`, `REASON_FOR_CANCELLATION`, `CUSTOMER_SATISFACTION`, `ENTITIES`.
  final List<String>? sectionTypes;

  ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigSections({
    this.sectionTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sectionTypesValue = sectionTypes;
    if (sectionTypesValue != null) {
      map['sectionTypes'] = sectionTypesValue;
    }
    return map;
  }

  factory ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigSections.fromMap(
      Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigSections(
      sectionTypes: map['sectionTypes'] == null
          ? null
          : (map['sectionTypes'] as List).cast<String>(),
    );
  }
}
