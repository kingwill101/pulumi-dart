// ignore_for_file: unused_element, unnecessary_cast


class ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigSuggestionTriggerSettings {
  /// Do not trigger if last utterance is small talk.
  final bool? noSmallTalk;
  /// Only trigger suggestion if participant role of last utterance is END_USER.
  final bool? onlyEndUser;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigSuggestionTriggerSettings].
  /// [noSmallTalk] Do not trigger if last utterance is small talk.
  /// [onlyEndUser] Only trigger suggestion if participant role of last utterance is END_USER.
  ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigSuggestionTriggerSettings({
    this.noSmallTalk,
    this.onlyEndUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'noSmallTalk': ?noSmallTalk,
      'onlyEndUser': ?onlyEndUser,
    };
  }

  factory ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigSuggestionTriggerSettings.fromMap(Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigSuggestionTriggerSettings(
      noSmallTalk: map['noSmallTalk'] == null ? null : map['noSmallTalk'] as bool,
      onlyEndUser: map['onlyEndUser'] == null ? null : map['onlyEndUser'] as bool,
    );
  }
}

