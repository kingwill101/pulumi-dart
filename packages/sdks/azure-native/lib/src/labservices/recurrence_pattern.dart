// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recurrence_frequency.dart';
import 'week_day.dart';

/// Recurrence pattern of a lab schedule.
class RecurrencePattern {
  /// When the recurrence will expire. This date is inclusive.
  final pulumi.Input<String> expirationDate;
  /// The frequency of the recurrence.
  final pulumi.Input<RecurrenceFrequency> frequency;
  /// The interval to invoke the schedule on. For example, interval = 2 and RecurrenceFrequency.Daily will run every 2 days. When no interval is supplied, an interval of 1 is used.
  final pulumi.Input<int?>? interval;
  /// The week days the schedule runs. Used for when the Frequency is set to Weekly.
  final pulumi.Input<List<WeekDay>?>? weekDays;

  /// Creates a new [RecurrencePattern].
  /// [expirationDate] When the recurrence will expire. This date is inclusive.
  /// [frequency] The frequency of the recurrence.
  /// [interval] The interval to invoke the schedule on. For example, interval = 2 and RecurrenceFrequency.Daily will run every 2 days. When no interval is supplied, an interval of 1 is used.
  /// [weekDays] The week days the schedule runs. Used for when the Frequency is set to Weekly.
  const RecurrencePattern({
    required this.expirationDate,
    required this.frequency,
    this.interval,
    this.weekDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationDate': expirationDate,
      'frequency': pulumi.Input.mapInputValue<RecurrenceFrequency, String>(frequency, (value) => value.wireValue),
      'interval': ?interval,
      'weekDays': ?pulumi.Input.mapOptionalInputValue<List<WeekDay>, List<String>>(weekDays, (value) => pulumi.Input.encodeList<WeekDay, String>(value, (value) => value.wireValue)),
    };
  }

  factory RecurrencePattern.fromMap(Map<String, dynamic> map) {
    return RecurrencePattern(
      expirationDate: pulumi.Input.fromValue(map['expirationDate'] as String),
      frequency: pulumi.Input.fromValue(RecurrenceFrequency.fromValue(map['frequency']! as String)),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      weekDays: (() { final guardedValue = map['weekDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WeekDay>(guardedValue, (value) => WeekDay.fromValue(value as String))); })(),
    );
  }
}
