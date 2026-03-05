// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_properties.dart';
import 'scheduled_actions_schedule.dart';

/// Scheduled action properties
class ScheduledActionProperties {
  /// The action the scheduled action should perform in the resources
  final pulumi.Input<String> actionType;
  /// Tell if the scheduled action is disabled or not
  final pulumi.Input<bool>? disabled;
  /// The time when the scheduled action is supposed to stop scheduling
  final pulumi.Input<String>? endTime;
  /// The notification settings for the scheduled action
  final pulumi.Input<List<NotificationProperties>> notificationSettings;
  /// The type of resource the scheduled action is targeting
  final pulumi.Input<String> resourceType;
  /// The schedule the scheduled action is supposed to follow
  final pulumi.Input<ScheduledActionsSchedule> schedule;
  /// The time which the scheduled action is supposed to start running
  final pulumi.Input<String> startTime;

  /// Creates a new [ScheduledActionProperties].
  /// [actionType] The action the scheduled action should perform in the resources
  /// [disabled] Tell if the scheduled action is disabled or not
  /// [endTime] The time when the scheduled action is supposed to stop scheduling
  /// [notificationSettings] The notification settings for the scheduled action
  /// [resourceType] The type of resource the scheduled action is targeting
  /// [schedule] The schedule the scheduled action is supposed to follow
  /// [startTime] The time which the scheduled action is supposed to start running
  ScheduledActionProperties({
    required this.actionType,
    this.disabled,
    this.endTime,
    required this.notificationSettings,
    required this.resourceType,
    required this.schedule,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'disabled': ?disabled,
      'endTime': ?endTime,
      'notificationSettings': pulumi.Input.mapInputValue<List<NotificationProperties>, List<Map<String, dynamic>>>(notificationSettings, (value) => pulumi.Input.encodeList<NotificationProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceType': resourceType,
      'schedule': pulumi.Input.mapInputValue<ScheduledActionsSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'startTime': startTime,
    };
  }

  factory ScheduledActionProperties.fromMap(Map<String, dynamic> map) {
    return ScheduledActionProperties(
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationSettings: pulumi.Input.fromValue(pulumi.Input.decodeList<NotificationProperties>(map['notificationSettings']!, (value) => NotificationProperties.fromMap((value as Map).cast<String, dynamic>()))),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      schedule: pulumi.Input.fromValue(ScheduledActionsSchedule.fromMap((map['schedule']! as Map).cast<String, dynamic>())),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}

