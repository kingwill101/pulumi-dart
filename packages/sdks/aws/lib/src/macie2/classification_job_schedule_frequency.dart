// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClassificationJobScheduleFrequency {
  /// Whether to run the job on a daily recurrence pattern.
  final pulumi.Input<bool?>? dailySchedule;
  /// Day of the month on which to run the job for a monthly recurrence pattern.
  final pulumi.Input<int?>? monthlySchedule;
  /// Day of the week on which to run the job for a weekly recurrence pattern.
  final pulumi.Input<String?>? weeklySchedule;

  /// Creates a new [ClassificationJobScheduleFrequency].
  /// [dailySchedule] Whether to run the job on a daily recurrence pattern.
  /// [monthlySchedule] Day of the month on which to run the job for a monthly recurrence pattern.
  /// [weeklySchedule] Day of the week on which to run the job for a weekly recurrence pattern.
  const ClassificationJobScheduleFrequency({
    this.dailySchedule,
    this.monthlySchedule,
    this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailySchedule': ?dailySchedule,
      'monthlySchedule': ?monthlySchedule,
      'weeklySchedule': ?weeklySchedule,
    };
  }

  factory ClassificationJobScheduleFrequency.fromMap(Map<String, dynamic> map) {
    return ClassificationJobScheduleFrequency(
      dailySchedule: (() { final guardedValue = map['dailySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      monthlySchedule: (() { final guardedValue = map['monthlySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      weeklySchedule: (() { final guardedValue = map['weeklySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
