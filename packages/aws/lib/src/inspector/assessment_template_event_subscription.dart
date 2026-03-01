// ignore_for_file: unused_element, unnecessary_cast


class AssessmentTemplateEventSubscription {
  /// The event for which you want to receive SNS notifications. Valid values are `ASSESSMENT_RUN_STARTED`, `ASSESSMENT_RUN_COMPLETED`, `ASSESSMENT_RUN_STATE_CHANGED`, and `FINDING_REPORTED`.
  final String event;
  /// The ARN of the SNS topic to which notifications are sent.
  final String topicArn;

  /// Creates a new [AssessmentTemplateEventSubscription].
  /// [event] The event for which you want to receive SNS notifications. Valid values are `ASSESSMENT_RUN_STARTED`, `ASSESSMENT_RUN_COMPLETED`, `ASSESSMENT_RUN_STATE_CHANGED`, and `FINDING_REPORTED`.
  /// [topicArn] The ARN of the SNS topic to which notifications are sent.
  AssessmentTemplateEventSubscription({
    required this.event,
    required this.topicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'event': event,
      'topicArn': topicArn,
    };
  }

  factory AssessmentTemplateEventSubscription.fromMap(Map<String, dynamic> map) {
    return AssessmentTemplateEventSubscription(
      event: map['event'] as String,
      topicArn: map['topicArn'] as String,
    );
  }
}

