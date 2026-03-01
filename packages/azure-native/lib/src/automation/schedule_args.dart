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
    AdvancedSchedule? advancedSchedule,
    required String automationAccountName,
    String? description,
    String? expiryTime,
    required String frequency,
    dynamic interval,
    required String name,
    required String resourceGroupName,
    String? scheduleName,
    required String startTime,
    String? timeZone,
  }) :
      advancedSchedule = pulumi.Input.asOptionalInput<AdvancedSchedule>(advancedSchedule),
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      description = pulumi.Input.asOptionalInput<String>(description),
      expiryTime = pulumi.Input.asOptionalInput<String>(expiryTime),
      frequency = pulumi.Input.asInput<String>(frequency),
      interval = pulumi.Input.asOptionalInput<dynamic>(interval),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scheduleName = pulumi.Input.asOptionalInput<String>(scheduleName),
      startTime = pulumi.Input.asInput<String>(startTime),
      timeZone = pulumi.Input.asOptionalInput<String>(timeZone);

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
      advancedSchedule: map['advancedSchedule'] == null ? null : AdvancedSchedule.fromMap((map['advancedSchedule'] as Map).cast<String, dynamic>()),
      automationAccountName: map['automationAccountName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      expiryTime: map['expiryTime'] == null ? null : map['expiryTime'] as String,
      frequency: map['frequency'] as String,
      interval: map['interval'] == null ? null : map['interval'],
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      scheduleName: map['scheduleName'] == null ? null : map['scheduleName'] as String,
      startTime: map['startTime'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

