// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recurrence_schedule_occurrence_response.dart';

/// The recurrence schedule.
class RecurrenceScheduleResponse {
  /// The hours.
  final pulumi.Input<List<int>>? hours;
  /// The minutes.
  final pulumi.Input<List<int>>? minutes;
  /// The month days.
  final pulumi.Input<List<int>>? monthDays;
  /// The monthly occurrences.
  final pulumi.Input<List<RecurrenceScheduleOccurrenceResponse>>? monthlyOccurrences;
  /// The days of the week.
  final pulumi.Input<List<String>>? weekDays;

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
      'monthlyOccurrences': ?pulumi.Input.mapOptionalInputValue<List<RecurrenceScheduleOccurrenceResponse>, List<Map<String, dynamic>>>(monthlyOccurrences, (value) => pulumi.Input.encodeList<RecurrenceScheduleOccurrenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'weekDays': ?weekDays,
    };
  }

  factory RecurrenceScheduleResponse.fromMap(Map<String, dynamic> map) {
    return RecurrenceScheduleResponse(
      hours: map['hours'] == null ? null : ((map['hours']! as List).cast<int>()).input(),
      minutes: map['minutes'] == null ? null : ((map['minutes']! as List).cast<int>()).input(),
      monthDays: map['monthDays'] == null ? null : ((map['monthDays']! as List).cast<int>()).input(),
      monthlyOccurrences: map['monthlyOccurrences'] == null ? null : (pulumi.Input.decodeList<RecurrenceScheduleOccurrenceResponse>(map['monthlyOccurrences']!, (value) => RecurrenceScheduleOccurrenceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      weekDays: map['weekDays'] == null ? null : ((map['weekDays']! as List).cast<String>()).input(),
    );
  }
}

