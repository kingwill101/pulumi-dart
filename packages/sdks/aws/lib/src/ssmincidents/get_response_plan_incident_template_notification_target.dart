// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResponsePlanIncidentTemplateNotificationTarget {
  /// The ARN of the Amazon SNS topic.
  final pulumi.Input<String> snsTopicArn;

  /// Creates a new [GetResponsePlanIncidentTemplateNotificationTarget].
  /// [snsTopicArn] The ARN of the Amazon SNS topic.
  GetResponsePlanIncidentTemplateNotificationTarget({
    required this.snsTopicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snsTopicArn': snsTopicArn,
    };
  }

  factory GetResponsePlanIncidentTemplateNotificationTarget.fromMap(Map<String, dynamic> map) {
    return GetResponsePlanIncidentTemplateNotificationTarget(
      snsTopicArn: pulumi.Input.fromValue(map['snsTopicArn'] as String),
    );
  }
}

