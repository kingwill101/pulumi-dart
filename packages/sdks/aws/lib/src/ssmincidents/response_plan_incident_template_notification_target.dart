// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResponsePlanIncidentTemplateNotificationTarget {
  /// The ARN of the Amazon SNS topic.
  final pulumi.Input<String> snsTopicArn;

  /// Creates a new [ResponsePlanIncidentTemplateNotificationTarget].
  /// [snsTopicArn] The ARN of the Amazon SNS topic.
  const ResponsePlanIncidentTemplateNotificationTarget({
    required this.snsTopicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snsTopicArn': snsTopicArn,
    };
  }

  factory ResponsePlanIncidentTemplateNotificationTarget.fromMap(Map<String, dynamic> map) {
    return ResponsePlanIncidentTemplateNotificationTarget(
      snsTopicArn: pulumi.Input.fromValue(map['snsTopicArn'] as String),
    );
  }
}
