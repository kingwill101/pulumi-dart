// ignore_for_file: unused_element, unnecessary_cast


/// Definition of NotificationConfiguration
class AutoScalingGroupNotificationConfigurationResponse {
  /// A list of event types that send a notification. Event types can include any of the following types.  *Allowed values*:  +   ``autoscaling:EC2_INSTANCE_LAUNCH``   +   ``autoscaling:EC2_INSTANCE_LAUNCH_ERROR``   +   ``autoscaling:EC2_INSTANCE_TERMINATE``   +   ``autoscaling:EC2_INSTANCE_TERMINATE_ERROR``   +   ``autoscaling:TEST_NOTIFICATION``
  final List<String>? notificationTypes;
  /// The Amazon Resource Name (ARN) of the Amazon SNS topic.
  final String? topicARN;

  /// Creates a new [AutoScalingGroupNotificationConfigurationResponse].
  /// [notificationTypes] A list of event types that send a notification. Event types can include any of the following types.  *Allowed values*:  +   ``autoscaling:EC2_INSTANCE_LAUNCH``   +   ``autoscaling:EC2_INSTANCE_LAUNCH_ERROR``   +   ``autoscaling:EC2_INSTANCE_TERMINATE``   +   ``autoscaling:EC2_INSTANCE_TERMINATE_ERROR``   +   ``autoscaling:TEST_NOTIFICATION``
  /// [topicARN] The Amazon Resource Name (ARN) of the Amazon SNS topic.
  AutoScalingGroupNotificationConfigurationResponse({
    this.notificationTypes,
    this.topicARN,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationTypes': ?notificationTypes,
      'topicARN': ?topicARN,
    };
  }

  factory AutoScalingGroupNotificationConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AutoScalingGroupNotificationConfigurationResponse(
      notificationTypes: map['notificationTypes'] == null ? null : (map['notificationTypes'] as List).cast<String>(),
      topicARN: map['topicARN'] == null ? null : map['topicARN'] as String,
    );
  }
}

