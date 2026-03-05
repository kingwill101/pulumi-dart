// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_properties_response.dart';
import 'scheduled_actions_schedule_response.dart';

/// Scheduled action properties
class ScheduledActionPropertiesResponse {
  /// The action the scheduled action should perform in the resources
  final pulumi.Input<String> actionType;
  /// Tell if the scheduled action is disabled or not
  final pulumi.Input<bool>? disabled;
  /// The time when the scheduled action is supposed to stop scheduling
  final pulumi.Input<String>? endTime;
  /// The notification settings for the scheduled action
  final pulumi.Input<List<NotificationPropertiesResponse>> notificationSettings;
  /// The status of the last provisioning operation performed on the resource.
  final pulumi.Input<String> provisioningState;
  /// The type of resource the scheduled action is targeting
  final pulumi.Input<String> resourceType;
  /// The schedule the scheduled action is supposed to follow
  final pulumi.Input<ScheduledActionsScheduleResponse> schedule;
  /// The time which the scheduled action is supposed to start running
  final pulumi.Input<String> startTime;

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
      'notificationSettings': pulumi.Input.mapInputValue<List<NotificationPropertiesResponse>, List<Map<String, dynamic>>>(notificationSettings, (value) => pulumi.Input.encodeList<NotificationPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'resourceType': resourceType,
      'schedule': pulumi.Input.mapInputValue<ScheduledActionsScheduleResponse, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'startTime': startTime,
    };
  }

  factory ScheduledActionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ScheduledActionPropertiesResponse(
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationSettings: pulumi.Input.fromValue(pulumi.Input.decodeList<NotificationPropertiesResponse>(map['notificationSettings']!, (value) => NotificationPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      schedule: pulumi.Input.fromValue(ScheduledActionsScheduleResponse.fromMap((map['schedule']! as Map).cast<String, dynamic>())),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}

