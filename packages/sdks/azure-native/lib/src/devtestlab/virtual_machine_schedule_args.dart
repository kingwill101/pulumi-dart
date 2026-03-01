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
  /// virtualmachines
  final pulumi.Input<String> virtualMachineName;
  /// If the schedule will occur only some days of the week, specify the weekly recurrence.
  final pulumi.Input<WeekDetails>? weeklyRecurrence;

  /// Creates a new [VirtualMachineScheduleArgs].
  /// [dailyRecurrence] If the schedule will occur once each day of the week, specify the daily recurrence.
  /// [hourlyRecurrence] If the schedule will occur multiple times a day, specify the hourly recurrence.
  /// [labName] labs
  /// [location] The location of the resource.
  /// [name] The name of the Schedule
  /// [notificationSettings] Notification settings.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [status] The status of the schedule (i.e. Enabled, Disabled)
  /// [tags] The tags of the resource.
  /// [targetResourceId] The resource ID to which the schedule belongs
  /// [taskType] The task type of the schedule (e.g. LabVmsShutdownTask, LabVmAutoStart).
  /// [timeZoneId] The time zone ID (e.g. China Standard Time, Greenland Standard Time, Pacific Standard time, etc.). The possible values for this property can be found in `IReadOnlyCollection<string> TimeZoneConverter.TZConvert.KnownWindowsTimeZoneIds` (https://github.com/mattjohnsonpint/TimeZoneConverter/blob/main/README.md)
  /// [virtualMachineName] virtualmachines
  /// [weeklyRecurrence] If the schedule will occur only some days of the week, specify the weekly recurrence.
  VirtualMachineScheduleArgs({
    pulumi.Output<DayDetails>? dailyRecurrence,
    pulumi.Output<HourDetails>? hourlyRecurrence,
    required pulumi.Output<String> labName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<NotificationSettings>? notificationSettings,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? targetResourceId,
    pulumi.Output<String>? taskType,
    pulumi.Output<String>? timeZoneId,
    required pulumi.Output<String> virtualMachineName,
    pulumi.Output<WeekDetails>? weeklyRecurrence,
  }) :
      dailyRecurrence = pulumi.Input.asOptionalInput<DayDetails>(dailyRecurrence),
      hourlyRecurrence = pulumi.Input.asOptionalInput<HourDetails>(hourlyRecurrence),
      labName = pulumi.Input.asInput<String>(labName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      notificationSettings = pulumi.Input.asOptionalInput<NotificationSettings>(notificationSettings),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetResourceId = pulumi.Input.asOptionalInput<String>(targetResourceId),
      taskType = pulumi.Input.asOptionalInput<String>(taskType),
      timeZoneId = pulumi.Input.asOptionalInput<String>(timeZoneId),
      virtualMachineName = pulumi.Input.asInput<String>(virtualMachineName),
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
      dailyRecurrence: map['dailyRecurrence'] == null ? null : pulumi.Output.create<DayDetails>(DayDetails.fromMap((map['dailyRecurrence'] as Map).cast<String, dynamic>())),
      hourlyRecurrence: map['hourlyRecurrence'] == null ? null : pulumi.Output.create<HourDetails>(HourDetails.fromMap((map['hourlyRecurrence'] as Map).cast<String, dynamic>())),
      labName: pulumi.Output.create<String>(map['labName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notificationSettings: map['notificationSettings'] == null ? null : pulumi.Output.create<NotificationSettings>(NotificationSettings.fromMap((map['notificationSettings'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targetResourceId: map['targetResourceId'] == null ? null : pulumi.Output.create<String>(map['targetResourceId'] as String),
      taskType: map['taskType'] == null ? null : pulumi.Output.create<String>(map['taskType'] as String),
      timeZoneId: map['timeZoneId'] == null ? null : pulumi.Output.create<String>(map['timeZoneId'] as String),
      virtualMachineName: pulumi.Output.create<String>(map['virtualMachineName'] as String),
      weeklyRecurrence: map['weeklyRecurrence'] == null ? null : pulumi.Output.create<WeekDetails>(WeekDetails.fromMap((map['weeklyRecurrence'] as Map).cast<String, dynamic>())),
    );
  }
}

