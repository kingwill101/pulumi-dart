// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recurrence_schedule_occurrence_response.dart';

/// The recurrence schedule.
class RecurrenceScheduleResponse {
  /// The hours.
  final List<int>? hours;
  /// The minutes.
  final List<int>? minutes;
  /// The month days.
  final List<int>? monthDays;
  /// The monthly occurrences.
  final List<RecurrenceScheduleOccurrenceResponse>? monthlyOccurrences;
  /// The days of the week.
  final List<String>? weekDays;

  /// Creates a new [RecurrenceScheduleResponse].
  /// [hours] The hours.
  /// [minutes] The minutes.
  /// [monthDays] The month days.
  /// [monthlyOccurrences] The monthly occurrences.
  /// [weekDays] The days of the week.
  RecurrenceScheduleResponse({
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
      'monthlyOccurrences': ?monthlyOccurrences == null ? null : pulumi.Input.encodeList<RecurrenceScheduleOccurrenceResponse, Map<String, dynamic>>(monthlyOccurrences!, (value) => value.toMap()),
      'weekDays': ?weekDays,
    };
  }

  factory RecurrenceScheduleResponse.fromMap(Map<String, dynamic> map) {
    return RecurrenceScheduleResponse(
      hours: map['hours'] == null ? null : (map['hours'] as List).cast<int>(),
      minutes: map['minutes'] == null ? null : (map['minutes'] as List).cast<int>(),
      monthDays: map['monthDays'] == null ? null : (map['monthDays'] as List).cast<int>(),
      monthlyOccurrences: map['monthlyOccurrences'] == null ? null : pulumi.Input.decodeList<RecurrenceScheduleOccurrenceResponse>(map['monthlyOccurrences'], (value) => RecurrenceScheduleOccurrenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      weekDays: map['weekDays'] == null ? null : (map['weekDays'] as List).cast<String>(),
    );
  }
}

