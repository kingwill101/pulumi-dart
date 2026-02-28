// ignore_for_file: unused_element, unnecessary_cast

/// Settings of suggestion trigger.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettingsResponse {
  /// Do not trigger if last utterance is small talk.
  final bool noSmalltalk;

  /// Only trigger suggestion if participant role of last utterance is END_USER.
  final bool onlyEndUser;

  /// Creates a new [GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettingsResponse].
  /// [noSmalltalk] Do not trigger if last utterance is small talk.
  /// [onlyEndUser] Only trigger suggestion if participant role of last utterance is END_USER.
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettingsResponse({
    required this.noSmalltalk,
    required this.onlyEndUser,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['noSmalltalk'] = noSmalltalk;
    map['onlyEndUser'] = onlyEndUser;
    return map;
  }

  factory GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettingsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettingsResponse(
      noSmalltalk: map['noSmalltalk'] as bool,
      onlyEndUser: map['onlyEndUser'] as bool,
    );
  }
}
