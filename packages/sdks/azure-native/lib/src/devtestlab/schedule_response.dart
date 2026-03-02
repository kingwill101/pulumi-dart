// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'day_details_response.dart';
import 'hour_details_response.dart';
import 'notification_settings_response.dart';
import 'week_details_response.dart';

/// A schedule.
class ScheduleResponse {
  /// The creation date of the schedule.
  final pulumi.Input<String> createdDate;
  /// If the schedule will occur once each day of the week, specify the daily recurrence.
  final pulumi.Input<DayDetailsResponse>? dailyRecurrence;
  /// If the schedule will occur multiple times a day, specify the hourly recurrence.
  final pulumi.Input<HourDetailsResponse>? hourlyRecurrence;
  /// The identifier of the resource.
  final pulumi.Input<String> id;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// The name of the resource.
  final pulumi.Input<String> name;
  /// Notification settings.
  final pulumi.Input<NotificationSettingsResponse>? notificationSettings;
  /// The provisioning status of the resource.
  final pulumi.Input<String> provisioningState;
  /// The status of the schedule (i.e. Enabled, Disabled)
  final pulumi.Input<String>? status;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The resource ID to which the schedule belongs
  final pulumi.Input<String>? targetResourceId;
  /// The task type of the schedule (e.g. LabVmsShutdownTask, LabVmAutoStart).
  final pulumi.Input<String>? taskType;
  /// The time zone ID (e.g. China Standard Time, Greenland Standard Time, Pacific Standard time, etc.). The possible values for this property can be found in `IReadOnlyCollection<string> TimeZoneConverter.TZConvert.KnownWindowsTimeZoneIds` (https://github.com/mattjohnsonpint/TimeZoneConverter/blob/main/README.md)
  final pulumi.Input<String>? timeZoneId;
  /// The type of the resource.
  final pulumi.Input<String> type;
  /// The unique immutable identifier of a resource (Guid).
  final pulumi.Input<String> uniqueIdentifier;
  /// If the schedule will occur only some days of the week, specify the weekly recurrence.
  final pulumi.Input<WeekDetailsResponse>? weeklyRecurrence;

  /// Creates a new [ScheduleResponse].
  /// [createdDate] The creation date of the schedule.
  /// [dailyRecurrence] If the schedule will occur once each day of the week, specify the daily recurrence.
  /// [hourlyRecurrence] If the schedule will occur multiple times a day, specify the hourly recurrence.
  /// [id] The identifier of the resource.
  /// [location] The location of the resource.
  /// [name] The name of the resource.
  /// [notificationSettings] Notification settings.
  /// [provisioningState] The provisioning status of the resource.
  /// [status] The status of the schedule (i.e. Enabled, Disabled)
  /// [tags] The tags of the resource.
  /// [targetResourceId] The resource ID to which the schedule belongs
  /// [taskType] The task type of the schedule (e.g. LabVmsShutdownTask, LabVmAutoStart).
  /// [timeZoneId] The time zone ID (e.g. China Standard Time, Greenland Standard Time, Pacific Standard time, etc.). The possible values for this property can be found in `IReadOnlyCollection<string> TimeZoneConverter.TZConvert.KnownWindowsTimeZoneIds` (https://github.com/mattjohnsonpint/TimeZoneConverter/blob/main/README.md)
  /// [type] The type of the resource.
  /// [uniqueIdentifier] The unique immutable identifier of a resource (Guid).
  /// [weeklyRecurrence] If the schedule will occur only some days of the week, specify the weekly recurrence.
  ScheduleResponse({
    required this.createdDate,
    this.dailyRecurrence,
    this.hourlyRecurrence,
    required this.id,
    this.location,
    required this.name,
    this.notificationSettings,
    required this.provisioningState,
    this.status,
    this.tags,
    this.targetResourceId,
    this.taskType,
    this.timeZoneId,
    required this.type,
    required this.uniqueIdentifier,
    this.weeklyRecurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdDate': createdDate,
      'dailyRecurrence': ?pulumi.Input.mapOptionalInputValue<DayDetailsResponse, Map<String, dynamic>>(dailyRecurrence, (value) => value.toMap()),
      'hourlyRecurrence': ?pulumi.Input.mapOptionalInputValue<HourDetailsResponse, Map<String, dynamic>>(hourlyRecurrence, (value) => value.toMap()),
      'id': id,
      'location': ?location,
      'name': name,
      'notificationSettings': ?pulumi.Input.mapOptionalInputValue<NotificationSettingsResponse, Map<String, dynamic>>(notificationSettings, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'status': ?status,
      'tags': ?tags,
      'targetResourceId': ?targetResourceId,
      'taskType': ?taskType,
      'timeZoneId': ?timeZoneId,
      'type': type,
      'uniqueIdentifier': uniqueIdentifier,
      'weeklyRecurrence': ?pulumi.Input.mapOptionalInputValue<WeekDetailsResponse, Map<String, dynamic>>(weeklyRecurrence, (value) => value.toMap()),
    };
  }

  factory ScheduleResponse.fromMap(Map<String, dynamic> map) {
    return ScheduleResponse(
      createdDate: (map['createdDate'] as String).input(),
      dailyRecurrence: map['dailyRecurrence'] == null ? null : (DayDetailsResponse.fromMap((map['dailyRecurrence']! as Map).cast<String, dynamic>())).input(),
      hourlyRecurrence: map['hourlyRecurrence'] == null ? null : (HourDetailsResponse.fromMap((map['hourlyRecurrence']! as Map).cast<String, dynamic>())).input(),
      id: (map['id'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: (map['name'] as String).input(),
      notificationSettings: map['notificationSettings'] == null ? null : (NotificationSettingsResponse.fromMap((map['notificationSettings']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      targetResourceId: map['targetResourceId'] == null ? null : (map['targetResourceId']! as String).input(),
      taskType: map['taskType'] == null ? null : (map['taskType']! as String).input(),
      timeZoneId: map['timeZoneId'] == null ? null : (map['timeZoneId']! as String).input(),
      type: (map['type'] as String).input(),
      uniqueIdentifier: (map['uniqueIdentifier'] as String).input(),
      weeklyRecurrence: map['weeklyRecurrence'] == null ? null : (WeekDetailsResponse.fromMap((map['weeklyRecurrence']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

