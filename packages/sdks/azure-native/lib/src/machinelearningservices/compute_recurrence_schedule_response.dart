// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ComputeRecurrenceScheduleResponse {
  /// [Required] List of hours for the schedule.
  final pulumi.Input<List<int>> hours;
  /// [Required] List of minutes for the schedule.
  final pulumi.Input<List<int>> minutes;
  /// List of month days for the schedule
  final pulumi.Input<List<int>>? monthDays;
  /// List of days for the schedule.
  final pulumi.Input<List<String>>? weekDays;

  /// Creates a new [ComputeRecurrenceScheduleResponse].
  /// [hours] [Required] List of hours for the schedule.
  /// [minutes] [Required] List of minutes for the schedule.
  /// [monthDays] List of month days for the schedule
  /// [weekDays] List of days for the schedule.
  ComputeRecurrenceScheduleResponse({
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

  factory ComputeRecurrenceScheduleResponse.fromMap(Map<String, dynamic> map) {
    return ComputeRecurrenceScheduleResponse(
      hours: ((map['hours'] as List).cast<int>()).input(),
      minutes: ((map['minutes'] as List).cast<int>()).input(),
      monthDays: map['monthDays'] == null ? null : ((map['monthDays'] as List).cast<int>()).input(),
      weekDays: map['weekDays'] == null ? null : ((map['weekDays'] as List).cast<String>()).input(),
    );
  }
}

