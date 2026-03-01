// ignore_for_file: unused_element, unnecessary_cast

import 'day_details_response.dart';
import 'hour_details_response.dart';
import 'notification_settings_response.dart';
import 'week_details_response.dart';

/// A schedule.
class ScheduleResponse {
  /// The creation date of the schedule.
  final String createdDate;
  /// If the schedule will occur once each day of the week, specify the daily recurrence.
  final DayDetailsResponse? dailyRecurrence;
  /// If the schedule will occur multiple times a day, specify the hourly recurrence.
  final HourDetailsResponse? hourlyRecurrence;
  /// The identifier of the resource.
  final String id;
  /// The location of the resource.
  final String? location;
  /// The name of the resource.
  final String name;
  /// Notification settings.
  final NotificationSettingsResponse? notificationSettings;
  /// The provisioning status of the resource.
  final String provisioningState;
  /// The status of the schedule (i.e. Enabled, Disabled)
  final String? status;
  /// The tags of the resource.
  final Map<String, String>? tags;
  /// The resource ID to which the schedule belongs
  final String? targetResourceId;
  /// The task type of the schedule (e.g. LabVmsShutdownTask, LabVmAutoStart).
  final String? taskType;
  /// The time zone ID (e.g. China Standard Time, Greenland Standard Time, Pacific Standard time, etc.). The possible values for this property can be found in `IReadOnlyCollection<string> TimeZoneConverter.TZConvert.KnownWindowsTimeZoneIds` (https://github.com/mattjohnsonpint/TimeZoneConverter/blob/main/README.md)
  final String? timeZoneId;
  /// The type of the resource.
  final String type;
  /// The unique immutable identifier of a resource (Guid).
  final String uniqueIdentifier;
  /// If the schedule will occur only some days of the week, specify the weekly recurrence.
  final WeekDetailsResponse? weeklyRecurrence;

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
      'dailyRecurrence': ?dailyRecurrence == null ? null : dailyRecurrence!.toMap(),
      'hourlyRecurrence': ?hourlyRecurrence == null ? null : hourlyRecurrence!.toMap(),
      'id': id,
      'location': ?location,
      'name': name,
      'notificationSettings': ?notificationSettings == null ? null : notificationSettings!.toMap(),
      'provisioningState': provisioningState,
      'status': ?status,
      'tags': ?tags,
      'targetResourceId': ?targetResourceId,
      'taskType': ?taskType,
      'timeZoneId': ?timeZoneId,
      'type': type,
      'uniqueIdentifier': uniqueIdentifier,
      'weeklyRecurrence': ?weeklyRecurrence == null ? null : weeklyRecurrence!.toMap(),
    };
  }

  factory ScheduleResponse.fromMap(Map<String, dynamic> map) {
    return ScheduleResponse(
      createdDate: map['createdDate'] as String,
      dailyRecurrence: map['dailyRecurrence'] == null ? null : DayDetailsResponse.fromMap((map['dailyRecurrence'] as Map).cast<String, dynamic>()),
      hourlyRecurrence: map['hourlyRecurrence'] == null ? null : HourDetailsResponse.fromMap((map['hourlyRecurrence'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      notificationSettings: map['notificationSettings'] == null ? null : NotificationSettingsResponse.fromMap((map['notificationSettings'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetResourceId: map['targetResourceId'] == null ? null : map['targetResourceId'] as String,
      taskType: map['taskType'] == null ? null : map['taskType'] as String,
      timeZoneId: map['timeZoneId'] == null ? null : map['timeZoneId'] as String,
      type: map['type'] as String,
      uniqueIdentifier: map['uniqueIdentifier'] as String,
      weeklyRecurrence: map['weeklyRecurrence'] == null ? null : WeekDetailsResponse.fromMap((map['weeklyRecurrence'] as Map).cast<String, dynamic>()),
    );
  }
}

