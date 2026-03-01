// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Notification resources.
class NotificationState {
  /// The Alibaba Cloud Resource Name (ARN) of the notification object, The value must be in `acs:ess:{region}:{account-id}:{resource-relative-id}` format.
  /// * region: the region ID of the scaling group. For more information, see `Regions and zones`
  /// * account-id: the ID of your account.
  /// * resource-relative-id: the notification method. Valid values : `cloudmonitor`, MNS queue: `queue/{queuename}`, Replace the queuename with the specific MNS queue name, MNS topic: `topic/{topicname}`, Replace the topicname with the specific MNS topic name.
  final pulumi.Input<String>? notificationArn;
  /// The notification types of Auto Scaling events and resource changes. Supported notification types: 'AUTOSCALING:SCALE_OUT_SUCCESS', 'AUTOSCALING:SCALE_IN_SUCCESS', 'AUTOSCALING:SCALE_OUT_ERROR', 'AUTOSCALING:SCALE_IN_ERROR', 'AUTOSCALING:SCALE_REJECT', 'AUTOSCALING:SCALE_OUT_START', 'AUTOSCALING:SCALE_IN_START', 'AUTOSCALING:SCHEDULE_TASK_EXPIRING'.
  final pulumi.Input<List<String>>? notificationTypes;
  /// The ID of the Auto Scaling group.
  final pulumi.Input<String>? scalingGroupId;
  /// The time zone of the notification. Specify the value in UTC. For example, a value of UTC+8 specifies that the time is 8 hours ahead of Coordinated Universal Time, and a value of UTC-7 specifies that the time is 7 hours behind Coordinated Universal Time.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [NotificationState].
  /// [notificationArn] The Alibaba Cloud Resource Name (ARN) of the notification object, The value must be in `acs:ess:{region}:{account-id}:{resource-relative-id}` format.
  /// [notificationTypes] The notification types of Auto Scaling events and resource changes. Supported notification types: 'AUTOSCALING:SCALE_OUT_SUCCESS', 'AUTOSCALING:SCALE_IN_SUCCESS', 'AUTOSCALING:SCALE_OUT_ERROR', 'AUTOSCALING:SCALE_IN_ERROR', 'AUTOSCALING:SCALE_REJECT', 'AUTOSCALING:SCALE_OUT_START', 'AUTOSCALING:SCALE_IN_START', 'AUTOSCALING:SCHEDULE_TASK_EXPIRING'.
  /// [scalingGroupId] The ID of the Auto Scaling group.
  /// [timeZone] The time zone of the notification. Specify the value in UTC. For example, a value of UTC+8 specifies that the time is 8 hours ahead of Coordinated Universal Time, and a value of UTC-7 specifies that the time is 7 hours behind Coordinated Universal Time.
  NotificationState({
    pulumi.Output<String>? notificationArn,
    pulumi.Output<List<String>>? notificationTypes,
    pulumi.Output<String>? scalingGroupId,
    pulumi.Output<String>? timeZone,
  }) :
      notificationArn = pulumi.Input.asOptionalInput<String>(notificationArn),
      notificationTypes = pulumi.Input.asOptionalInput<List<String>>(notificationTypes),
      scalingGroupId = pulumi.Input.asOptionalInput<String>(scalingGroupId),
      timeZone = pulumi.Input.asOptionalInput<String>(timeZone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationArn': ?notificationArn,
      'notificationTypes': ?notificationTypes,
      'scalingGroupId': ?scalingGroupId,
      'timeZone': ?timeZone,
    };
  }

  factory NotificationState.fromMap(Map<String, dynamic> map) {
    return NotificationState(
      notificationArn: map['notificationArn'] == null ? null : pulumi.Output.create<String>(map['notificationArn'] as String),
      notificationTypes: map['notificationTypes'] == null ? null : pulumi.Output.create<List<String>>((map['notificationTypes'] as List).cast<String>()),
      scalingGroupId: map['scalingGroupId'] == null ? null : pulumi.Output.create<String>(map['scalingGroupId'] as String),
      timeZone: map['timeZone'] == null ? null : pulumi.Output.create<String>(map['timeZone'] as String),
    );
  }
}

