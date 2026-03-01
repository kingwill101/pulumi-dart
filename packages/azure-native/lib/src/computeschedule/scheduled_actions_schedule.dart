// ignore_for_file: unused_element, unnecessary_cast

import 'execution_parameters.dart';

/// Specify the schedule in which the scheduled action is supposed to follow
class ScheduledActionsSchedule {
  /// The type of deadline the scheduled action is supposed to follow for the schedule. If no value is passed, it will default to InitiateAt.
  final String? deadlineType;
  /// The execution parameters the scheduled action is supposed to follow
  final ExecutionParameters? executionParameters;
  /// The days of the month the scheduled action is supposed to run on. If empty, it means it will run on every day of the month.
  final List<int> requestedDaysOfTheMonth;
  /// The months the scheduled action is supposed to run on
  final List<String> requestedMonths;
  /// The week days the scheduled action is supposed to run on
  final List<String> requestedWeekDays;
  /// The time the scheduled action is supposed to run on
  final String scheduledTime;
  /// The timezone the scheduled time is specified on
  final String timeZone;

  /// Creates a new [ScheduledActionsSchedule].
  /// [deadlineType] The type of deadline the scheduled action is supposed to follow for the schedule. If no value is passed, it will default to InitiateAt.
  /// [executionParameters] The execution parameters the scheduled action is supposed to follow
  /// [requestedDaysOfTheMonth] The days of the month the scheduled action is supposed to run on. If empty, it means it will run on every day of the month.
  /// [requestedMonths] The months the scheduled action is supposed to run on
  /// [requestedWeekDays] The week days the scheduled action is supposed to run on
  /// [scheduledTime] The time the scheduled action is supposed to run on
  /// [timeZone] The timezone the scheduled time is specified on
  ScheduledActionsSchedule({
    this.deadlineType,
    this.executionParameters,
    required this.requestedDaysOfTheMonth,
    required this.requestedMonths,
    required this.requestedWeekDays,
    required this.scheduledTime,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deadlineType': ?deadlineType,
      'executionParameters': ?executionParameters == null ? null : executionParameters!.toMap(),
      'requestedDaysOfTheMonth': requestedDaysOfTheMonth,
      'requestedMonths': requestedMonths,
      'requestedWeekDays': requestedWeekDays,
      'scheduledTime': scheduledTime,
      'timeZone': timeZone,
    };
  }

  factory ScheduledActionsSchedule.fromMap(Map<String, dynamic> map) {
    return ScheduledActionsSchedule(
      deadlineType: map['deadlineType'] == null ? null : map['deadlineType'] as String,
      executionParameters: map['executionParameters'] == null ? null : ExecutionParameters.fromMap((map['executionParameters'] as Map).cast<String, dynamic>()),
      requestedDaysOfTheMonth: (map['requestedDaysOfTheMonth'] as List).cast<int>(),
      requestedMonths: (map['requestedMonths'] as List).cast<String>(),
      requestedWeekDays: (map['requestedWeekDays'] as List).cast<String>(),
      scheduledTime: map['scheduledTime'] as String,
      timeZone: map['timeZone'] as String,
    );
  }
}

