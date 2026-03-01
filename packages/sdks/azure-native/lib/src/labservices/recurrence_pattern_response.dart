// ignore_for_file: unused_element, unnecessary_cast


/// Recurrence pattern of a lab schedule.
class RecurrencePatternResponse {
  /// When the recurrence will expire. This date is inclusive.
  final String expirationDate;
  /// The frequency of the recurrence.
  final String frequency;
  /// The interval to invoke the schedule on. For example, interval = 2 and RecurrenceFrequency.Daily will run every 2 days. When no interval is supplied, an interval of 1 is used.
  final int? interval;
  /// The week days the schedule runs. Used for when the Frequency is set to Weekly.
  final List<String>? weekDays;

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
      expirationDate: map['expirationDate'] as String,
      frequency: map['frequency'] as String,
      interval: map['interval'] == null ? null : map['interval'] as int,
      weekDays: map['weekDays'] == null ? null : (map['weekDays'] as List).cast<String>(),
    );
  }
}

