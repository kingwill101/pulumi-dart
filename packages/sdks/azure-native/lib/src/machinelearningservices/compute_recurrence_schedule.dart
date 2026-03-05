// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ComputeRecurrenceSchedule {
  /// [Required] List of hours for the schedule.
  final pulumi.Input<List<int>> hours;
  /// [Required] List of minutes for the schedule.
  final pulumi.Input<List<int>> minutes;
  /// List of month days for the schedule
  final pulumi.Input<List<int>>? monthDays;
  /// List of days for the schedule.
  final pulumi.Input<List<String>>? weekDays;

  /// Creates a new [ComputeRecurrenceSchedule].
  /// [hours] [Required] List of hours for the schedule.
  /// [minutes] [Required] List of minutes for the schedule.
  /// [monthDays] List of month days for the schedule
  /// [weekDays] List of days for the schedule.
  ComputeRecurrenceSchedule({
    required this.hours,
    required this.minutes,
    this.monthDays,
    this.weekDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': hours,
      'minutes': minutes,
      'monthDays': ?monthDays,
      'weekDays': ?weekDays,
    };
  }

  factory ComputeRecurrenceSchedule.fromMap(Map<String, dynamic> map) {
    return ComputeRecurrenceSchedule(
      hours: pulumi.Input.fromValue((map['hours'] as List).cast<int>()),
      minutes: pulumi.Input.fromValue((map['minutes'] as List).cast<int>()),
      monthDays: (() { final guardedValue = map['monthDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      weekDays: (() { final guardedValue = map['weekDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

