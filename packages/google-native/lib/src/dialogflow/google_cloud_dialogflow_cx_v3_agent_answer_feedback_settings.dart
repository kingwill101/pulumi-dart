// ignore_for_file: unused_element, unnecessary_cast

/// Settings for answer feedback collection.
class GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings {
  /// Optional. If enabled, end users will be able to provide answer feedback to Dialogflow responses. Feature works only if interaction logging is enabled in the Dialogflow agent.
  final bool? enableAnswerFeedback;

  /// Creates a new [GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings].
  /// [enableAnswerFeedback] Optional. If enabled, end users will be able to provide answer feedback to Dialogflow responses. Feature works only if interaction logging is enabled in the Dialogflow agent.
  GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings({
    this.enableAnswerFeedback,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableAnswerFeedbackValue = enableAnswerFeedback;
    if (enableAnswerFeedbackValue != null) {
      map['enableAnswerFeedback'] = enableAnswerFeedbackValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings(
      enableAnswerFeedback: map['enableAnswerFeedback'] == null
          ? null
          : map['enableAnswerFeedback'] as bool,
    );
  }
}
