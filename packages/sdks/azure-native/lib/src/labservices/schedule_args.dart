// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recurrence_pattern.dart';

/// {@template pulumi_labservices_schedule_args_doc}
/// The set of arguments for Schedule.
/// {@endtemplate}
/// {@macro pulumi_labservices_schedule_args_doc}
class ScheduleArgs {
  /// The name of the lab that uniquely identifies it within containing lab plan. Used in resource URIs.
  final pulumi.Input<String> labName;
  /// Notes for this schedule.
  final pulumi.Input<String>? notes;
  /// The recurrence pattern of the scheduled actions.
  final pulumi.Input<RecurrencePattern>? recurrencePattern;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the schedule that uniquely identifies it within containing lab. Used in resource URIs.
  final pulumi.Input<String>? scheduleName;
  /// When lab user virtual machines will be started. Timestamp offsets will be ignored and timeZoneId is used instead.
  final pulumi.Input<String>? startAt;
  /// When lab user virtual machines will be stopped. Timestamp offsets will be ignored and timeZoneId is used instead.
  final pulumi.Input<String> stopAt;
  /// The IANA timezone id for the schedule.
  final pulumi.Input<String> timeZoneId;

  /// Creates a new [ScheduleArgs].
  /// [labName] The name of the lab that uniquely identifies it within containing lab plan. Used in resource URIs.
  /// [notes] Notes for this schedule.
  /// [recurrencePattern] The recurrence pattern of the scheduled actions.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scheduleName] The name of the schedule that uniquely identifies it within containing lab. Used in resource URIs.
  /// [startAt] When lab user virtual machines will be started. Timestamp offsets will be ignored and timeZoneId is used instead.
  /// [stopAt] When lab user virtual machines will be stopped. Timestamp offsets will be ignored and timeZoneId is used instead.
  /// [timeZoneId] The IANA timezone id for the schedule.
  const ScheduleArgs({
    required this.labName,
    this.notes,
    this.recurrencePattern,
    required this.resourceGroupName,
    this.scheduleName,
    this.startAt,
    required this.stopAt,
    required this.timeZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labName': labName,
      'notes': ?notes,
      'recurrencePattern': ?pulumi.Input.mapOptionalInputValue<RecurrencePattern, Map<String, dynamic>>(recurrencePattern, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'scheduleName': ?scheduleName,
      'startAt': ?startAt,
      'stopAt': stopAt,
      'timeZoneId': timeZoneId,
    };
  }

  factory ScheduleArgs.fromMap(Map<String, dynamic> map) {
    return ScheduleArgs(
      labName: pulumi.Input.fromValue(map['labName'] as String),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recurrencePattern: (() { final guardedValue = map['recurrencePattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecurrencePattern.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scheduleName: (() { final guardedValue = map['scheduleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startAt: (() { final guardedValue = map['startAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stopAt: pulumi.Input.fromValue(map['stopAt'] as String),
      timeZoneId: pulumi.Input.fromValue(map['timeZoneId'] as String),
    );
  }
}
