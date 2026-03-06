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
  const RecurrenceScheduleResponse({
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
      hours: (() { final guardedValue = map['hours']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      minutes: (() { final guardedValue = map['minutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      monthDays: (() { final guardedValue = map['monthDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      monthlyOccurrences: (() { final guardedValue = map['monthlyOccurrences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RecurrenceScheduleOccurrenceResponse>(guardedValue, (value) => RecurrenceScheduleOccurrenceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      weekDays: (() { final guardedValue = map['weekDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

