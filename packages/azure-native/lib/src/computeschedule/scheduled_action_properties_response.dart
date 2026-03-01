// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_properties_response.dart';
import 'scheduled_actions_schedule_response.dart';

/// Scheduled action properties
class ScheduledActionPropertiesResponse {
  /// The action the scheduled action should perform in the resources
  final String actionType;
  /// Tell if the scheduled action is disabled or not
  final bool? disabled;
  /// The time when the scheduled action is supposed to stop scheduling
  final String? endTime;
  /// The notification settings for the scheduled action
  final List<NotificationPropertiesResponse> notificationSettings;
  /// The status of the last provisioning operation performed on the resource.
  final String provisioningState;
  /// The type of resource the scheduled action is targeting
  final String resourceType;
  /// The schedule the scheduled action is supposed to follow
  final ScheduledActionsScheduleResponse schedule;
  /// The time which the scheduled action is supposed to start running
  final String startTime;

  /// Creates a new [ScheduledActionPropertiesResponse].
  /// [actionType] The action the scheduled action should perform in the resources
  /// [disabled] Tell if the scheduled action is disabled or not
  /// [endTime] The time when the scheduled action is supposed to stop scheduling
  /// [notificationSettings] The notification settings for the scheduled action
  /// [provisioningState] The status of the last provisioning operation performed on the resource.
  /// [resourceType] The type of resource the scheduled action is targeting
  /// [schedule] The schedule the scheduled action is supposed to follow
  /// [startTime] The time which the scheduled action is supposed to start running
  ScheduledActionPropertiesResponse({
    required this.actionType,
    this.disabled,
    this.endTime,
    required this.notificationSettings,
    required this.provisioningState,
    required this.resourceType,
    required this.schedule,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'disabled': ?disabled,
      'endTime': ?endTime,
      'notificationSettings': pulumi.Input.encodeList<NotificationPropertiesResponse, Map<String, dynamic>>(notificationSettings, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'resourceType': resourceType,
      'schedule': schedule.toMap(),
      'startTime': startTime,
    };
  }

  factory ScheduledActionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ScheduledActionPropertiesResponse(
      actionType: map['actionType'] as String,
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      notificationSettings: pulumi.Input.decodeList<NotificationPropertiesResponse>(map['notificationSettings'], (value) => NotificationPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      resourceType: map['resourceType'] as String,
      schedule: ScheduledActionsScheduleResponse.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] as String,
    );
  }
}

