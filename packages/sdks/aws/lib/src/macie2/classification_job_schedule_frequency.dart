// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClassificationJobScheduleFrequency {
  /// Specifies a daily recurrence pattern for running the job.
  final pulumi.Input<bool>? dailySchedule;
  /// Specifies a monthly recurrence pattern for running the job.
  final pulumi.Input<int>? monthlySchedule;
  /// Specifies a weekly recurrence pattern for running the job.
  final pulumi.Input<String>? weeklySchedule;

  /// Creates a new [ClassificationJobScheduleFrequency].
  /// [dailySchedule] Specifies a daily recurrence pattern for running the job.
  /// [monthlySchedule] Specifies a monthly recurrence pattern for running the job.
  /// [weeklySchedule] Specifies a weekly recurrence pattern for running the job.
  ClassificationJobScheduleFrequency({
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
      monthlySchedule: (() { final guardedValue = map['monthlySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      weeklySchedule: (() { final guardedValue = map['weeklySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

