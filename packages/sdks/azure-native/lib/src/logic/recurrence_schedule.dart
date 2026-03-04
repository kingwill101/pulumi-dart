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
      'monthlyOccurrences':
          ?pulumi.Input.mapOptionalInputValue<
            List<RecurrenceScheduleOccurrence>,
            List<Map<String, dynamic>>
          >(
            monthlyOccurrences,
            (value) =>
                pulumi.Input.encodeList<
                  RecurrenceScheduleOccurrence,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'weekDays':
          ?pulumi.Input.mapOptionalInputValue<List<DaysOfWeek>, List<String>>(
            weekDays,
            (value) => pulumi.Input.encodeList<DaysOfWeek, String>(
              value,
              (value) => value.wireValue,
            ),
          ),
    };
  }

  factory RecurrenceSchedule.fromMap(Map<String, dynamic> map) {
    return RecurrenceSchedule(
      hours: (() {
        final guardedValue = map['hours'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<int>());
      })(),
      minutes: (() {
        final guardedValue = map['minutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<int>());
      })(),
      monthDays: (() {
        final guardedValue = map['monthDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<int>());
      })(),
      monthlyOccurrences: (() {
        final guardedValue = map['monthlyOccurrences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RecurrenceScheduleOccurrence>(
            guardedValue,
            (value) => RecurrenceScheduleOccurrence.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      weekDays: (() {
        final guardedValue = map['weekDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DaysOfWeek>(
            guardedValue,
            (value) => DaysOfWeek.fromValue(value as String),
          ),
        );
      })(),
    );
  }
}
