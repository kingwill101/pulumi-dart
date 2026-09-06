// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of NotificationConfiguration
class AutoScalingGroupNotificationConfiguration {
  /// A list of event types that send a notification. Event types can include any of the following types.  *Allowed values*:  +   ``autoscaling:EC2_INSTANCE_LAUNCH``   +   ``autoscaling:EC2_INSTANCE_LAUNCH_ERROR``   +   ``autoscaling:EC2_INSTANCE_TERMINATE``   +   ``autoscaling:EC2_INSTANCE_TERMINATE_ERROR``   +   ``autoscaling:TEST_NOTIFICATION``
  final pulumi.Input<List<String>?>? notificationTypes;
  /// The Amazon Resource Name (ARN) of the Amazon SNS topic.
  final pulumi.Input<String?>? topicARN;

  /// Creates a new [AutoScalingGroupNotificationConfiguration].
  /// [notificationTypes] A list of event types that send a notification. Event types can include any of the following types.  *Allowed values*:  +   ``autoscaling:EC2_INSTANCE_LAUNCH``   +   ``autoscaling:EC2_INSTANCE_LAUNCH_ERROR``   +   ``autoscaling:EC2_INSTANCE_TERMINATE``   +   ``autoscaling:EC2_INSTANCE_TERMINATE_ERROR``   +   ``autoscaling:TEST_NOTIFICATION``
  /// [topicARN] The Amazon Resource Name (ARN) of the Amazon SNS topic.
  const AutoScalingGroupNotificationConfiguration({
    this.notificationTypes,
    this.topicARN,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationTypes': ?notificationTypes,
      'topicARN': ?topicARN,
    };
  }

  factory AutoScalingGroupNotificationConfiguration.fromMap(Map<String, dynamic> map) {
    return AutoScalingGroupNotificationConfiguration(
      notificationTypes: (() { final guardedValue = map['notificationTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      topicARN: (() { final guardedValue = map['topicARN']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
