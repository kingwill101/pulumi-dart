// ignore_for_file: unused_element, unnecessary_cast

class ResponsePlanIncidentTemplateNotificationTarget {
  /// The ARN of the Amazon SNS topic.
  final String snsTopicArn;

  /// Creates a new [ResponsePlanIncidentTemplateNotificationTarget].
  /// [snsTopicArn] The ARN of the Amazon SNS topic.
  ResponsePlanIncidentTemplateNotificationTarget({
    required this.snsTopicArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['snsTopicArn'] = snsTopicArn;
    return map;
  }

  factory ResponsePlanIncidentTemplateNotificationTarget.fromMap(
      Map<String, dynamic> map) {
    return ResponsePlanIncidentTemplateNotificationTarget(
      snsTopicArn: map['snsTopicArn'] as String,
    );
  }
}
