// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_schedule.dart';

/// {@template pulumi_automation_schedule_args_doc}
/// The set of arguments for Schedule.
/// {@endtemplate}
/// {@macro pulumi_automation_schedule_args_doc}
class ScheduleArgs {
  /// Gets or sets the AdvancedSchedule.
  final pulumi.Input<AdvancedSchedule>? advancedSchedule;
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// Gets or sets the description of the schedule.
  final pulumi.Input<String>? description;
  /// Gets or sets the end time of the schedule.
  final pulumi.Input<String>? expiryTime;
  /// Gets or sets the frequency of the schedule.
  final pulumi.Input<String> frequency;
  /// Gets or sets the interval of the schedule.
  final pulumi.Input<dynamic>? interval;
  /// Gets or sets the name of the Schedule.
  final pulumi.Input<String> name;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The schedule name.
  final pulumi.Input<String>? scheduleName;
  /// Gets or sets the start time of the schedule.
  final pulumi.Input<String> startTime;
  /// Gets or sets the time zone of the schedule.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [ScheduleArgs].
  /// [advancedSchedule] Gets or sets the AdvancedSchedule.
  /// [automationAccountName] The name of the automation account.
  /// [description] Gets or sets the description of the schedule.
  /// [expiryTime] Gets or sets the end time of the schedule.
  /// [frequency] Gets or sets the frequency of the schedule.
  /// [interval] Gets or sets the interval of the schedule.
  /// [name] Gets or sets the name of the Schedule.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [scheduleName] The schedule name.
  /// [startTime] Gets or sets the start time of the schedule.
  /// [timeZone] Gets or sets the time zone of the schedule.
  ScheduleArgs({
    this.advancedSchedule,
    required this.automationAccountName,
    this.description,
    this.expiryTime,
    required this.frequency,
    this.interval,
    required this.name,
    required this.resourceGroupName,
    this.scheduleName,
    required this.startTime,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSchedule': ?pulumi.Input.mapOptionalInputValue<AdvancedSchedule, Map<String, dynamic>>(advancedSchedule, (value) => value.toMap()),
      'automationAccountName': automationAccountName,
      'description': ?description,
      'expiryTime': ?expiryTime,
      'frequency': frequency,
      'interval': ?interval,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'scheduleName': ?scheduleName,
      'startTime': startTime,
      'timeZone': ?timeZone,
    };
  }

  factory ScheduleArgs.fromMap(Map<String, dynamic> map) {
    return ScheduleArgs(
      advancedSchedule: (() { final guardedValue = map['advancedSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdvancedSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiryTime: (() { final guardedValue = map['expiryTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scheduleName: (() { final guardedValue = map['scheduleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

