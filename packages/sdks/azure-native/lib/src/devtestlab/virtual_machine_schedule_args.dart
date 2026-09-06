// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'day_details.dart';
import 'hour_details.dart';
import 'notification_settings.dart';
import 'week_details.dart';

/// {@template pulumi_devtestlab_virtual_machine_schedule_args_doc}
/// The set of arguments for VirtualMachineSchedule.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_virtual_machine_schedule_args_doc}
class VirtualMachineScheduleArgs {
  /// If the schedule will occur once each day of the week, specify the daily recurrence.
  final pulumi.Input<DayDetails?>? dailyRecurrence;
  /// If the schedule will occur multiple times a day, specify the hourly recurrence.
  final pulumi.Input<HourDetails?>? hourlyRecurrence;
  /// labs
  final pulumi.Input<String> labName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the Schedule
  final pulumi.Input<String?>? name;
  /// Notification settings.
  final pulumi.Input<NotificationSettings?>? notificationSettings;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The status of the schedule (i.e. Enabled, Disabled)
  final pulumi.Input<dynamic>? status;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The resource ID to which the schedule belongs
  final pulumi.Input<String?>? targetResourceId;
  /// The task type of the schedule (e.g. LabVmsShutdownTask, LabVmAutoStart).
  final pulumi.Input<String?>? taskType;
  /// The time zone ID (e.g. China Standard Time, Greenland Standard Time, Pacific Standard time, etc.). The possible values for this property can be found in `IReadOnlyCollection&lt;string&gt; TimeZoneConverter.TZConvert.KnownWindowsTimeZoneIds` (https://github.com/mattjohnsonpint/TimeZoneConverter/blob/main/README.md)
  final pulumi.Input<String?>? timeZoneId;
  /// virtualmachines
  final pulumi.Input<String> virtualMachineName;
  /// If the schedule will occur only some days of the week, specify the weekly recurrence.
  final pulumi.Input<WeekDetails?>? weeklyRecurrence;

  /// Creates a new [VirtualMachineScheduleArgs].
  /// [dailyRecurrence] If the schedule will occur once each day of the week, specify the daily recurrence.
  /// [hourlyRecurrence] If the schedule will occur multiple times a day, specify the hourly recurrence.
  /// [labName] labs
  /// [location] The geo-location where the resource lives
  /// [name] The name of the Schedule
  /// [notificationSettings] Notification settings.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [status] The status of the schedule (i.e. Enabled, Disabled)
  /// [tags] Resource tags.
  /// [targetResourceId] The resource ID to which the schedule belongs
  /// [taskType] The task type of the schedule (e.g. LabVmsShutdownTask, LabVmAutoStart).
  /// [timeZoneId] The time zone ID (e.g. China Standard Time, Greenland Standard Time, Pacific Standard time, etc.). The possible values for this property can be found in `IReadOnlyCollection&lt;string&gt; TimeZoneConverter.TZConvert.KnownWindowsTimeZoneIds` (https://github.com/mattjohnsonpint/TimeZoneConverter/blob/main/README.md)
  /// [virtualMachineName] virtualmachines
  /// [weeklyRecurrence] If the schedule will occur only some days of the week, specify the weekly recurrence.
  VirtualMachineScheduleArgs({
    this.dailyRecurrence,
    this.hourlyRecurrence,
    required this.labName,
    this.location,
    this.name,
    this.notificationSettings,
    required this.resourceGroupName,
    pulumi.Input<dynamic>? status,
    this.tags,
    this.targetResourceId,
    this.taskType,
    this.timeZoneId,
    required this.virtualMachineName,
    this.weeklyRecurrence,
  }) : status = status ?? pulumi.Input.fromValue('Disabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyRecurrence': ?pulumi.Input.mapOptionalInputValue<DayDetails, Map<String, dynamic>>(dailyRecurrence, (value) => value.toMap()),
      'hourlyRecurrence': ?pulumi.Input.mapOptionalInputValue<HourDetails, Map<String, dynamic>>(hourlyRecurrence, (value) => value.toMap()),
      'labName': labName,
      'location': ?location,
      'name': ?name,
      'notificationSettings': ?pulumi.Input.mapOptionalInputValue<NotificationSettings, Map<String, dynamic>>(notificationSettings, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'status': ?status,
      'tags': ?tags,
      'targetResourceId': ?targetResourceId,
      'taskType': ?taskType,
      'timeZoneId': ?timeZoneId,
      'virtualMachineName': virtualMachineName,
      'weeklyRecurrence': ?pulumi.Input.mapOptionalInputValue<WeekDetails, Map<String, dynamic>>(weeklyRecurrence, (value) => value.toMap()),
    };
  }

  factory VirtualMachineScheduleArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScheduleArgs(
      dailyRecurrence: (() { final guardedValue = map['dailyRecurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DayDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hourlyRecurrence: (() { final guardedValue = map['hourlyRecurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HourDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labName: pulumi.Input.fromValue(map['labName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationSettings: (() { final guardedValue = map['notificationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotificationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetResourceId: (() { final guardedValue = map['targetResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskType: (() { final guardedValue = map['taskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZoneId: (() { final guardedValue = map['timeZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualMachineName: pulumi.Input.fromValue(map['virtualMachineName'] as String),
      weeklyRecurrence: (() { final guardedValue = map['weeklyRecurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WeekDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
