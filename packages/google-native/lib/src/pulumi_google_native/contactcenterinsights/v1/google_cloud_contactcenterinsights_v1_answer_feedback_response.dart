// ignore_for_file: unused_element, unnecessary_cast

/// The feedback that the customer has about a certain answer in the conversation.
class GoogleCloudContactcenterinsightsV1AnswerFeedbackResponse {
  /// Indicates whether an answer or item was clicked by the human agent.
  final bool clicked;

  /// The correctness level of an answer.
  final String correctnessLevel;

  /// Indicates whether an answer or item was displayed to the human agent in the agent desktop UI.
  final bool displayed;

  GoogleCloudContactcenterinsightsV1AnswerFeedbackResponse({
    required this.clicked,
    required this.correctnessLevel,
    required this.displayed,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clicked'] = clicked;
    map['correctnessLevel'] = correctnessLevel;
    map['displayed'] = displayed;
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1AnswerFeedbackResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1AnswerFeedbackResponse(
      clicked: map['clicked'] as bool,
      correctnessLevel: map['correctnessLevel'] as String,
      displayed: map['displayed'] as bool,
    );
  }
}
