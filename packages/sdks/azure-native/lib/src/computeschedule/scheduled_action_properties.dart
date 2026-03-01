// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_properties.dart';
import 'scheduled_actions_schedule.dart';

/// Scheduled action properties
class ScheduledActionProperties {
  /// The action the scheduled action should perform in the resources
  final String actionType;
  /// Tell if the scheduled action is disabled or not
  final bool? disabled;
  /// The time when the scheduled action is supposed to stop scheduling
  final String? endTime;
  /// The notification settings for the scheduled action
  final List<NotificationProperties> notificationSettings;
  /// The type of resource the scheduled action is targeting
  final String resourceType;
  /// The schedule the scheduled action is supposed to follow
  final ScheduledActionsSchedule schedule;
  /// The time which the scheduled action is supposed to start running
  final String startTime;

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
      'notificationSettings': pulumi.Input.encodeList<NotificationProperties, Map<String, dynamic>>(notificationSettings, (value) => value.toMap()),
      'resourceType': resourceType,
      'schedule': schedule.toMap(),
      'startTime': startTime,
    };
  }

  factory ScheduledActionProperties.fromMap(Map<String, dynamic> map) {
    return ScheduledActionProperties(
      actionType: map['actionType'] as String,
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      notificationSettings: pulumi.Input.decodeList<NotificationProperties>(map['notificationSettings'], (value) => NotificationProperties.fromMap((value as Map).cast<String, dynamic>())),
      resourceType: map['resourceType'] as String,
      schedule: ScheduledActionsSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] as String,
    );
  }
}

