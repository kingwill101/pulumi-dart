// ignore_for_file: unused_element, unnecessary_cast

class CxAgentAnswerFeedbackSettings {
  /// If enabled, end users will be able to provide [answer feedback](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.sessions/submitAnswerFeedback#body.AnswerFeedback)
  /// to Dialogflow responses. Feature works only if interaction logging is enabled in the Dialogflow agent.
  final bool? enableAnswerFeedback;

  CxAgentAnswerFeedbackSettings({
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

  factory CxAgentAnswerFeedbackSettings.fromMap(Map<String, dynamic> map) {
    return CxAgentAnswerFeedbackSettings(
      enableAnswerFeedback: map['enableAnswerFeedback'] == null
          ? null
          : map['enableAnswerFeedback'] as bool,
    );
  }
}
