// ignore_for_file: unused_element, unnecessary_cast

/// Settings for answer feedback collection.
class GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettingsResponse {
  /// Optional. If enabled, end users will be able to provide answer feedback to Dialogflow responses. Feature works only if interaction logging is enabled in the Dialogflow agent.
  final bool enableAnswerFeedback;

  GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettingsResponse({
    required this.enableAnswerFeedback,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableAnswerFeedback'] = enableAnswerFeedback;
    return map;
  }

  factory GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettingsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettingsResponse(
      enableAnswerFeedback: map['enableAnswerFeedback'] as bool,
    );
  }
}
