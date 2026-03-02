// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_parameters_response.dart';

/// Specify the schedule in which the scheduled action is supposed to follow
class ScheduledActionsScheduleResponse {
  /// The type of deadline the scheduled action is supposed to follow for the schedule. If no value is passed, it will default to InitiateAt.
  final pulumi.Input<String>? deadlineType;
  /// The execution parameters the scheduled action is supposed to follow
  final pulumi.Input<ExecutionParametersResponse>? executionParameters;
  /// The days of the month the scheduled action is supposed to run on. If empty, it means it will run on every day of the month.
  final pulumi.Input<List<int>> requestedDaysOfTheMonth;
  /// The months the scheduled action is supposed to run on
  final pulumi.Input<List<String>> requestedMonths;
  /// The week days the scheduled action is supposed to run on
  final pulumi.Input<List<String>> requestedWeekDays;
  /// The time the scheduled action is supposed to run on
  final pulumi.Input<String> scheduledTime;
  /// The timezone the scheduled time is specified on
  final pulumi.Input<String> timeZone;

  /// Creates a new [ScheduledActionsScheduleResponse].
  /// [deadlineType] The type of deadline the scheduled action is supposed to follow for the schedule. If no value is passed, it will default to InitiateAt.
  /// [executionParameters] The execution parameters the scheduled action is supposed to follow
  /// [requestedDaysOfTheMonth] The days of the month the scheduled action is supposed to run on. If empty, it means it will run on every day of the month.
  /// [requestedMonths] The months the scheduled action is supposed to run on
  /// [requestedWeekDays] The week days the scheduled action is supposed to run on
  /// [scheduledTime] The time the scheduled action is supposed to run on
  /// [timeZone] The timezone the scheduled time is specified on
  ScheduledActionsScheduleResponse({
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
      'executionParameters': ?pulumi.Input.mapOptionalInputValue<ExecutionParametersResponse, Map<String, dynamic>>(executionParameters, (value) => value.toMap()),
      'requestedDaysOfTheMonth': requestedDaysOfTheMonth,
      'requestedMonths': requestedMonths,
      'requestedWeekDays': requestedWeekDays,
      'scheduledTime': scheduledTime,
      'timeZone': timeZone,
    };
  }

  factory ScheduledActionsScheduleResponse.fromMap(Map<String, dynamic> map) {
    return ScheduledActionsScheduleResponse(
      deadlineType: map['deadlineType'] == null ? null : (map['deadlineType'] as String).input(),
      executionParameters: map['executionParameters'] == null ? null : (ExecutionParametersResponse.fromMap((map['executionParameters'] as Map).cast<String, dynamic>())).input(),
      requestedDaysOfTheMonth: ((map['requestedDaysOfTheMonth'] as List).cast<int>()).input(),
      requestedMonths: ((map['requestedMonths'] as List).cast<String>()).input(),
      requestedWeekDays: ((map['requestedWeekDays'] as List).cast<String>()).input(),
      scheduledTime: (map['scheduledTime'] as String).input(),
      timeZone: (map['timeZone'] as String).input(),
    );
  }
}

