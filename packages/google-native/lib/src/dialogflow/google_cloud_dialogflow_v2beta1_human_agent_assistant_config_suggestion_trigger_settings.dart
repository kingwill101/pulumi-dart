// ignore_for_file: unused_element, unnecessary_cast

/// Settings of suggestion trigger.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionTriggerSettings {
  /// Do not trigger if last utterance is small talk.
  final bool? noSmallTalk;

  /// Only trigger suggestion if participant role of last utterance is END_USER.
  final bool? onlyEndUser;

  /// Creates a new [GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionTriggerSettings].
  /// [noSmallTalk] Do not trigger if last utterance is small talk.
  /// [onlyEndUser] Only trigger suggestion if participant role of last utterance is END_USER.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionTriggerSettings({
    this.noSmallTalk,
    this.onlyEndUser,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final noSmallTalkValue = noSmallTalk;
    if (noSmallTalkValue != null) {
      map['noSmallTalk'] = noSmallTalkValue;
    }
    final onlyEndUserValue = onlyEndUser;
    if (onlyEndUserValue != null) {
      map['onlyEndUser'] = onlyEndUserValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionTriggerSettings.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionTriggerSettings(
      noSmallTalk:
          map['noSmallTalk'] == null ? null : map['noSmallTalk'] as bool,
      onlyEndUser:
          map['onlyEndUser'] == null ? null : map['onlyEndUser'] as bool,
    );
  }
}
