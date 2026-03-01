// ignore_for_file: unused_element, unnecessary_cast


/// Set assessment schedule for SQL Server.
class ScheduleResponse {
  /// Day of the week to run assessment.
  final String? dayOfWeek;
  /// Enable or disable assessment schedule on SQL virtual machine.
  final bool? enable;
  /// Occurrence of the DayOfWeek day within a month to schedule assessment. Takes values: 1,2,3,4 and -1. Use -1 for last DayOfWeek day of the month
  final int? monthlyOccurrence;
  /// Time of the day in HH:mm format. Eg. 17:30
  final String? startTime;
  /// Number of weeks to schedule between 2 assessment runs. Takes value from 1-6
  final int? weeklyInterval;

  /// Creates a new [ScheduleResponse].
  /// [dayOfWeek] Day of the week to run assessment.
  /// [enable] Enable or disable assessment schedule on SQL virtual machine.
  /// [monthlyOccurrence] Occurrence of the DayOfWeek day within a month to schedule assessment. Takes values: 1,2,3,4 and -1. Use -1 for last DayOfWeek day of the month
  /// [startTime] Time of the day in HH:mm format. Eg. 17:30
  /// [weeklyInterval] Number of weeks to schedule between 2 assessment runs. Takes value from 1-6
  ScheduleResponse({
    this.dayOfWeek,
    this.enable,
    this.monthlyOccurrence,
    this.startTime,
    this.weeklyInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': ?dayOfWeek,
      'enable': ?enable,
      'monthlyOccurrence': ?monthlyOccurrence,
      'startTime': ?startTime,
      'weeklyInterval': ?weeklyInterval,
    };
  }

  factory ScheduleResponse.fromMap(Map<String, dynamic> map) {
    return ScheduleResponse(
      dayOfWeek: map['dayOfWeek'] == null ? null : map['dayOfWeek'] as String,
      enable: map['enable'] == null ? null : map['enable'] as bool,
      monthlyOccurrence: map['monthlyOccurrence'] == null ? null : map['monthlyOccurrence'] as int,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      weeklyInterval: map['weeklyInterval'] == null ? null : map['weeklyInterval'] as int,
    );
  }
}

