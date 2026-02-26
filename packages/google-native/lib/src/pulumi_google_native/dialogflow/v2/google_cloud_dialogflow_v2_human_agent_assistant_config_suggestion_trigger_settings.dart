// ignore_for_file: unused_element, unnecessary_cast

/// Settings of suggestion trigger.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings {
  /// Do not trigger if last utterance is small talk.
  final bool? noSmalltalk;

  /// Only trigger suggestion if participant role of last utterance is END_USER.
  final bool? onlyEndUser;

  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings({
    this.noSmalltalk,
    this.onlyEndUser,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final noSmalltalkValue = noSmalltalk;
    if (noSmalltalkValue != null) {
      map['noSmalltalk'] = noSmalltalkValue;
    }
    final onlyEndUserValue = onlyEndUser;
    if (onlyEndUserValue != null) {
      map['onlyEndUser'] = onlyEndUserValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings(
      noSmalltalk:
          map['noSmalltalk'] == null ? null : map['noSmalltalk'] as bool,
      onlyEndUser:
          map['onlyEndUser'] == null ? null : map['onlyEndUser'] as bool,
    );
  }
}
