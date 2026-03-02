// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'days_of_week.dart';
import 'recurrence_schedule_occurrence.dart';

/// The recurrence schedule.
class RecurrenceSchedule {
  /// The hours.
  final pulumi.Input<List<int>>? hours;
  /// The minutes.
  final pulumi.Input<List<int>>? minutes;
  /// The month days.
  final pulumi.Input<List<int>>? monthDays;
  /// The monthly occurrences.
  final pulumi.Input<List<RecurrenceScheduleOccurrence>>? monthlyOccurrences;
  /// The days of the week.
  final pulumi.Input<List<DaysOfWeek>>? weekDays;

  /// Creates a new [RecurrenceSchedule].
  /// [hours] The hours.
  /// [minutes] The minutes.
  /// [monthDays] The month days.
  /// [monthlyOccurrences] The monthly occurrences.
  /// [weekDays] The days of the week.
  RecurrenceSchedule({
    this.hours,
    this.minutes,
    this.monthDays,
    this.monthlyOccurrences,
    this.weekDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': ?hours,
      'minutes': ?minutes,
      'monthDays': ?monthDays,
      'monthlyOccurrences': ?pulumi.Input.mapOptionalInputValue<List<RecurrenceScheduleOccurrence>, List<Map<String, dynamic>>>(monthlyOccurrences, (value) => pulumi.Input.encodeList<RecurrenceScheduleOccurrence, Map<String, dynamic>>(value, (value) => value.toMap())),
      'weekDays': ?pulumi.Input.mapOptionalInputValue<List<DaysOfWeek>, List<String>>(weekDays, (value) => pulumi.Input.encodeList<DaysOfWeek, String>(value, (value) => value.value)),
    };
  }

  factory RecurrenceSchedule.fromMap(Map<String, dynamic> map) {
    return RecurrenceSchedule(
      hours: map['hours'] == null ? null : ((map['hours']! as List).cast<int>()).input(),
      minutes: map['minutes'] == null ? null : ((map['minutes']! as List).cast<int>()).input(),
      monthDays: map['monthDays'] == null ? null : ((map['monthDays']! as List).cast<int>()).input(),
      monthlyOccurrences: map['monthlyOccurrences'] == null ? null : (pulumi.Input.decodeList<RecurrenceScheduleOccurrence>(map['monthlyOccurrences']!, (value) => RecurrenceScheduleOccurrence.fromMap((value as Map).cast<String, dynamic>()))).input(),
      weekDays: map['weekDays'] == null ? null : (pulumi.Input.decodeList<DaysOfWeek>(map['weekDays']!, (value) => DaysOfWeek.fromValue(value as String))).input(),
    );
  }
}

