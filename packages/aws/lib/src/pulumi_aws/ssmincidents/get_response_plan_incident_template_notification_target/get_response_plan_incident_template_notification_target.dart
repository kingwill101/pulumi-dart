// ignore_for_file: unused_element, unnecessary_cast

class GetResponsePlanIncidentTemplateNotificationTarget {
  /// The ARN of the Amazon SNS topic.
  final String snsTopicArn;

  GetResponsePlanIncidentTemplateNotificationTarget({
    required this.snsTopicArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['snsTopicArn'] = snsTopicArn;
    return map;
  }

  factory GetResponsePlanIncidentTemplateNotificationTarget.fromMap(
      Map<String, dynamic> map) {
    return GetResponsePlanIncidentTemplateNotificationTarget(
      snsTopicArn: map['snsTopicArn'] as String,
    );
  }
}
