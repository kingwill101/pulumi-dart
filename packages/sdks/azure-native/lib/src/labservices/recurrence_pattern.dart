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
  final pulumi.Input<int>? interval;
  /// The week days the schedule runs. Used for when the Frequency is set to Weekly.
  final pulumi.Input<List<WeekDay>>? weekDays;

  /// Creates a new [RecurrencePattern].
  /// [expirationDate] When the recurrence will expire. This date is inclusive.
  /// [frequency] The frequency of the recurrence.
  /// [interval] The interval to invoke the schedule on. For example, interval = 2 and RecurrenceFrequency.Daily will run every 2 days. When no interval is supplied, an interval of 1 is used.
  /// [weekDays] The week days the schedule runs. Used for when the Frequency is set to Weekly.
  RecurrencePattern({
    required this.expirationDate,
    required this.frequency,
    this.interval,
    this.weekDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationDate': expirationDate,
      'frequency': pulumi.Input.mapInputValue<RecurrenceFrequency, String>(frequency, (value) => value.value),
      'interval': ?interval,
      'weekDays': ?pulumi.Input.mapOptionalInputValue<List<WeekDay>, List<String>>(weekDays, (value) => pulumi.Input.encodeList<WeekDay, String>(value, (value) => value.value)),
    };
  }

  factory RecurrencePattern.fromMap(Map<String, dynamic> map) {
    return RecurrencePattern(
      expirationDate: (map['expirationDate'] as String).input(),
      frequency: (RecurrenceFrequency.fromValue(map['frequency'] as String)).input(),
      interval: map['interval'] == null ? null : (map['interval']! as int).input(),
      weekDays: map['weekDays'] == null ? null : (pulumi.Input.decodeList<WeekDay>(map['weekDays']!, (value) => WeekDay.fromValue(value as String))).input(),
    );
  }
}

