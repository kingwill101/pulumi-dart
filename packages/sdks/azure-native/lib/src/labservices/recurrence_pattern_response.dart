// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Recurrence pattern of a lab schedule.
class RecurrencePatternResponse {
  /// When the recurrence will expire. This date is inclusive.
  final pulumi.Input<String> expirationDate;
  /// The frequency of the recurrence.
  final pulumi.Input<String> frequency;
  /// The interval to invoke the schedule on. For example, interval = 2 and RecurrenceFrequency.Daily will run every 2 days. When no interval is supplied, an interval of 1 is used.
  final pulumi.Input<int>? interval;
  /// The week days the schedule runs. Used for when the Frequency is set to Weekly.
  final pulumi.Input<List<String>>? weekDays;

  /// Creates a new [RecurrencePatternResponse].
  /// [expirationDate] When the recurrence will expire. This date is inclusive.
  /// [frequency] The frequency of the recurrence.
  /// [interval] The interval to invoke the schedule on. For example, interval = 2 and RecurrenceFrequency.Daily will run every 2 days. When no interval is supplied, an interval of 1 is used.
  /// [weekDays] The week days the schedule runs. Used for when the Frequency is set to Weekly.
  RecurrencePatternResponse({
    required this.expirationDate,
    required this.frequency,
    this.interval,
    this.weekDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationDate': expirationDate,
      'frequency': frequency,
      'interval': ?interval,
      'weekDays': ?weekDays,
    };
  }

  factory RecurrencePatternResponse.fromMap(Map<String, dynamic> map) {
    return RecurrencePatternResponse(
      expirationDate: pulumi.Input.fromValue(map['expirationDate'] as String),
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      weekDays: (() { final guardedValue = map['weekDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

