// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'day_details.dart';
import 'hour_details.dart';
import 'notification_settings.dart';
import 'week_details.dart';

/// {@template pulumi_devtestlab_service_fabric_schedule_args_doc}
/// The set of arguments for ServiceFabricSchedule.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_service_fabric_schedule_args_doc}
class ServiceFabricScheduleArgs {
  /// If the schedule will occur once each day of the week, specify the daily recurrence.
  final pulumi.Input<DayDetails>? dailyRecurrence;
  /// If the schedule will occur multiple times a day, specify the hourly recurrence.
  final pulumi.Input<HourDetails>? hourlyRecurrence;
  /// labs
  final pulumi.Input<String> labName;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// The name of the Schedule
  final pulumi.Input<String>? name;
  /// Notification settings.
  final pulumi.Input<NotificationSettings>? notificationSettings;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// servicefabrics
  final pulumi.Input<String> serviceFabricName;
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
  /// users
  final pulumi.Input<String> userName;
  /// If the schedule will occur only some days of the week, specify the weekly recurrence.
  final pulumi.Input<WeekDetails>? weeklyRecurrence;

  /// Creates a new [ServiceFabricScheduleArgs].
  /// [dailyRecurrence] If the schedule will occur once each day of the week, specify the daily recurrence.
  /// [hourlyRecurrence] If the schedule will occur multiple times a day, specify the hourly recurrence.
  /// [labName] labs
  /// [location] The location of the resource.
  /// [name] The name of the Schedule
  /// [notificationSettings] Notification settings.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceFabricName] servicefabrics
  /// [status] The status of the schedule (i.e. Enabled, Disabled)
  /// [tags] The tags of the resource.
  /// [targetResourceId] The resource ID to which the schedule belongs
  /// [taskType] The task type of the schedule (e.g. LabVmsShutdownTask, LabVmAutoStart).
  /// [timeZoneId] The time zone ID (e.g. China Standard Time, Greenland Standard Time, Pacific Standard time, etc.). The possible values for this property can be found in `IReadOnlyCollection<string> TimeZoneConverter.TZConvert.KnownWindowsTimeZoneIds` (https://github.com/mattjohnsonpint/TimeZoneConverter/blob/main/README.md)
  /// [userName] users
  /// [weeklyRecurrence] If the schedule will occur only some days of the week, specify the weekly recurrence.
  ServiceFabricScheduleArgs({
    this.dailyRecurrence,
    this.hourlyRecurrence,
    required this.labName,
    this.location,
    this.name,
    this.notificationSettings,
    required this.resourceGroupName,
    required this.serviceFabricName,
    this.status,
    this.tags,
    this.targetResourceId,
    this.taskType,
    this.timeZoneId,
    required this.userName,
    this.weeklyRecurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyRecurrence': ?pulumi.Input.mapOptionalInputValue<DayDetails, Map<String, dynamic>>(dailyRecurrence, (value) => value.toMap()),
      'hourlyRecurrence': ?pulumi.Input.mapOptionalInputValue<HourDetails, Map<String, dynamic>>(hourlyRecurrence, (value) => value.toMap()),
      'labName': labName,
      'location': ?location,
      'name': ?name,
      'notificationSettings': ?pulumi.Input.mapOptionalInputValue<NotificationSettings, Map<String, dynamic>>(notificationSettings, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceFabricName': serviceFabricName,
      'status': ?status,
      'tags': ?tags,
      'targetResourceId': ?targetResourceId,
      'taskType': ?taskType,
      'timeZoneId': ?timeZoneId,
      'userName': userName,
      'weeklyRecurrence': ?pulumi.Input.mapOptionalInputValue<WeekDetails, Map<String, dynamic>>(weeklyRecurrence, (value) => value.toMap()),
    };
  }

  factory ServiceFabricScheduleArgs.fromMap(Map<String, dynamic> map) {
    return ServiceFabricScheduleArgs(
      dailyRecurrence: map['dailyRecurrence'] == null ? null : (DayDetails.fromMap((map['dailyRecurrence']! as Map).cast<String, dynamic>())).input(),
      hourlyRecurrence: map['hourlyRecurrence'] == null ? null : (HourDetails.fromMap((map['hourlyRecurrence']! as Map).cast<String, dynamic>())).input(),
      labName: (map['labName'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      notificationSettings: map['notificationSettings'] == null ? null : (NotificationSettings.fromMap((map['notificationSettings']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceFabricName: (map['serviceFabricName'] as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      targetResourceId: map['targetResourceId'] == null ? null : (map['targetResourceId']! as String).input(),
      taskType: map['taskType'] == null ? null : (map['taskType']! as String).input(),
      timeZoneId: map['timeZoneId'] == null ? null : (map['timeZoneId']! as String).input(),
      userName: (map['userName'] as String).input(),
      weeklyRecurrence: map['weeklyRecurrence'] == null ? null : (WeekDetails.fromMap((map['weeklyRecurrence']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

