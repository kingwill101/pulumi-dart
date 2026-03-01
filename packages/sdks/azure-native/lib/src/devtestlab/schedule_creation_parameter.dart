// ignore_for_file: unused_element, unnecessary_cast

import 'day_details.dart';
import 'hour_details.dart';
import 'notification_settings.dart';
import 'week_details.dart';

/// Properties for creating a schedule.
class ScheduleCreationParameter {
  /// If the schedule will occur once each day of the week, specify the daily recurrence.
  final DayDetails? dailyRecurrence;
  /// If the schedule will occur multiple times a day, specify the hourly recurrence.
  final HourDetails? hourlyRecurrence;
  /// The name of the virtual machine or environment
  final String? name;
  /// Notification settings.
  final NotificationSettings? notificationSettings;
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
  /// If the schedule will occur only some days of the week, specify the weekly recurrence.
  final WeekDetails? weeklyRecurrence;

  /// Creates a new [ScheduleCreationParameter].
  /// [dailyRecurrence] If the schedule will occur once each day of the week, specify the daily recurrence.
  /// [hourlyRecurrence] If the schedule will occur multiple times a day, specify the hourly recurrence.
  /// [name] The name of the virtual machine or environment
  /// [notificationSettings] Notification settings.
  /// [status] The status of the schedule (i.e. Enabled, Disabled)
  /// [tags] The tags of the resource.
  /// [targetResourceId] The resource ID to which the schedule belongs
  /// [taskType] The task type of the schedule (e.g. LabVmsShutdownTask, LabVmAutoStart).
  /// [timeZoneId] The time zone ID (e.g. China Standard Time, Greenland Standard Time, Pacific Standard time, etc.). The possible values for this property can be found in `IReadOnlyCollection<string> TimeZoneConverter.TZConvert.KnownWindowsTimeZoneIds` (https://github.com/mattjohnsonpint/TimeZoneConverter/blob/main/README.md)
  /// [weeklyRecurrence] If the schedule will occur only some days of the week, specify the weekly recurrence.
  ScheduleCreationParameter({
    this.dailyRecurrence,
    this.hourlyRecurrence,
    this.name,
    this.notificationSettings,
    this.status,
    this.tags,
    this.targetResourceId,
    this.taskType,
    this.timeZoneId,
    this.weeklyRecurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyRecurrence': ?dailyRecurrence == null ? null : dailyRecurrence!.toMap(),
      'hourlyRecurrence': ?hourlyRecurrence == null ? null : hourlyRecurrence!.toMap(),
      'name': ?name,
      'notificationSettings': ?notificationSettings == null ? null : notificationSettings!.toMap(),
      'status': ?status,
      'tags': ?tags,
      'targetResourceId': ?targetResourceId,
      'taskType': ?taskType,
      'timeZoneId': ?timeZoneId,
      'weeklyRecurrence': ?weeklyRecurrence == null ? null : weeklyRecurrence!.toMap(),
    };
  }

  factory ScheduleCreationParameter.fromMap(Map<String, dynamic> map) {
    return ScheduleCreationParameter(
      dailyRecurrence: map['dailyRecurrence'] == null ? null : DayDetails.fromMap((map['dailyRecurrence'] as Map).cast<String, dynamic>()),
      hourlyRecurrence: map['hourlyRecurrence'] == null ? null : HourDetails.fromMap((map['hourlyRecurrence'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      notificationSettings: map['notificationSettings'] == null ? null : NotificationSettings.fromMap((map['notificationSettings'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetResourceId: map['targetResourceId'] == null ? null : map['targetResourceId'] as String,
      taskType: map['taskType'] == null ? null : map['taskType'] as String,
      timeZoneId: map['timeZoneId'] == null ? null : map['timeZoneId'] as String,
      weeklyRecurrence: map['weeklyRecurrence'] == null ? null : WeekDetails.fromMap((map['weeklyRecurrence'] as Map).cast<String, dynamic>()),
    );
  }
}

