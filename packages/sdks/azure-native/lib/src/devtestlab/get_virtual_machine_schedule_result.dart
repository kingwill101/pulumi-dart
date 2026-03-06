// ignore_for_file: unused_element, unnecessary_cast

import 'day_details_response.dart';
import 'hour_details_response.dart';
import 'notification_settings_response.dart';
import 'week_details_response.dart';

/// Result data returned by getVirtualMachineSchedule.
class GetVirtualMachineScheduleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
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
  /// The time zone ID (e.g. China Standard Time, Greenland Standard Time, Pacific Standard time, etc.). The possible values for this property can be found in `IReadOnlyCollection&lt;string&gt; TimeZoneConverter.TZConvert.KnownWindowsTimeZoneIds` (https://github.com/mattjohnsonpint/TimeZoneConverter/blob/main/README.md)
  final String? timeZoneId;
  /// The type of the resource.
  final String type;
  /// The unique immutable identifier of a resource (Guid).
  final String uniqueIdentifier;
  /// If the schedule will occur only some days of the week, specify the weekly recurrence.
  final WeekDetailsResponse? weeklyRecurrence;

  /// Creates a new [GetVirtualMachineScheduleResult].
  /// [azureApiVersion] The Azure API version of the resource.
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
  /// [timeZoneId] The time zone ID (e.g. China Standard Time, Greenland Standard Time, Pacific Standard time, etc.). The possible values for this property can be found in `IReadOnlyCollection&lt;string&gt; TimeZoneConverter.TZConvert.KnownWindowsTimeZoneIds` (https://github.com/mattjohnsonpint/TimeZoneConverter/blob/main/README.md)
  /// [type] The type of the resource.
  /// [uniqueIdentifier] The unique immutable identifier of a resource (Guid).
  /// [weeklyRecurrence] If the schedule will occur only some days of the week, specify the weekly recurrence.
  const GetVirtualMachineScheduleResult({
    required this.azureApiVersion,
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
      'azureApiVersion': azureApiVersion,
      'createdDate': createdDate,
      'dailyRecurrence': ?dailyRecurrence?.toMap(),
      'hourlyRecurrence': ?hourlyRecurrence?.toMap(),
      'id': id,
      'location': ?location,
      'name': name,
      'notificationSettings': ?notificationSettings?.toMap(),
      'provisioningState': provisioningState,
      'status': ?status,
      'tags': ?tags,
      'targetResourceId': ?targetResourceId,
      'taskType': ?taskType,
      'timeZoneId': ?timeZoneId,
      'type': type,
      'uniqueIdentifier': uniqueIdentifier,
      'weeklyRecurrence': ?weeklyRecurrence?.toMap(),
    };
  }

  factory GetVirtualMachineScheduleResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineScheduleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdDate: map['createdDate'] as String,
      dailyRecurrence: (() { final guardedValue = map['dailyRecurrence']; if (guardedValue == null) return null; return DayDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hourlyRecurrence: (() { final guardedValue = map['hourlyRecurrence']; if (guardedValue == null) return null; return HourDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      notificationSettings: (() { final guardedValue = map['notificationSettings']; if (guardedValue == null) return null; return NotificationSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: map['provisioningState'] as String,
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetResourceId: (() { final guardedValue = map['targetResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      taskType: (() { final guardedValue = map['taskType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeZoneId: (() { final guardedValue = map['timeZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
      uniqueIdentifier: map['uniqueIdentifier'] as String,
      weeklyRecurrence: (() { final guardedValue = map['weeklyRecurrence']; if (guardedValue == null) return null; return WeekDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

