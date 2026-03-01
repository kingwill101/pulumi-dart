// ignore_for_file: unused_element, unnecessary_cast

class GetResponsePlanIncidentTemplateNotificationTarget {
  /// The ARN of the Amazon SNS topic.
  final String snsTopicArn;

  /// Creates a new [GetResponsePlanIncidentTemplateNotificationTarget].
  /// [snsTopicArn] The ARN of the Amazon SNS topic.
  GetResponsePlanIncidentTemplateNotificationTarget({
    required this.snsTopicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'snsTopicArn': snsTopicArn};
  }

  factory GetResponsePlanIncidentTemplateNotificationTarget.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetResponsePlanIncidentTemplateNotificationTarget(
      snsTopicArn: map['snsTopicArn'] as String,
    );
  }
}
