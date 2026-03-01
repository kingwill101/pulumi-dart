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
    DayDetails? dailyRecurrence,
    HourDetails? hourlyRecurrence,
    required String labName,
    String? location,
    String? name,
    NotificationSettings? notificationSettings,
    required String resourceGroupName,
    required String serviceFabricName,
    String? status,
    Map<String, String>? tags,
    String? targetResourceId,
    String? taskType,
    String? timeZoneId,
    required String userName,
    WeekDetails? weeklyRecurrence,
  }) :
      dailyRecurrence = pulumi.Input.asOptionalInput<DayDetails>(dailyRecurrence),
      hourlyRecurrence = pulumi.Input.asOptionalInput<HourDetails>(hourlyRecurrence),
      labName = pulumi.Input.asInput<String>(labName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      notificationSettings = pulumi.Input.asOptionalInput<NotificationSettings>(notificationSettings),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceFabricName = pulumi.Input.asInput<String>(serviceFabricName),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetResourceId = pulumi.Input.asOptionalInput<String>(targetResourceId),
      taskType = pulumi.Input.asOptionalInput<String>(taskType),
      timeZoneId = pulumi.Input.asOptionalInput<String>(timeZoneId),
      userName = pulumi.Input.asInput<String>(userName),
      weeklyRecurrence = pulumi.Input.asOptionalInput<WeekDetails>(weeklyRecurrence);

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
      dailyRecurrence: map['dailyRecurrence'] == null ? null : DayDetails.fromMap((map['dailyRecurrence'] as Map).cast<String, dynamic>()),
      hourlyRecurrence: map['hourlyRecurrence'] == null ? null : HourDetails.fromMap((map['hourlyRecurrence'] as Map).cast<String, dynamic>()),
      labName: map['labName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      notificationSettings: map['notificationSettings'] == null ? null : NotificationSettings.fromMap((map['notificationSettings'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      serviceFabricName: map['serviceFabricName'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetResourceId: map['targetResourceId'] == null ? null : map['targetResourceId'] as String,
      taskType: map['taskType'] == null ? null : map['taskType'] as String,
      timeZoneId: map['timeZoneId'] == null ? null : map['timeZoneId'] as String,
      userName: map['userName'] as String,
      weeklyRecurrence: map['weeklyRecurrence'] == null ? null : WeekDetails.fromMap((map['weeklyRecurrence'] as Map).cast<String, dynamic>()),
    );
  }
}

