// ignore_for_file: unused_element, unnecessary_cast


class DefenseRuleConfigTimeConfigWeekTimePeriodDayPeriod {
  /// The end time of each day when the rule is effective. This is a millisecond-level timestamp relative to 00:00 of the day. The value must be in the range of 0-86400000).
  final int? end;
  /// The start time of each day when the rule is effective. This is a millisecond-level timestamp relative to 00:00 of the day. The value must be in the range of [0-86400000).
  final int? start;

  /// Creates a new [DefenseRuleConfigTimeConfigWeekTimePeriodDayPeriod].
  /// [end] The end time of each day when the rule is effective. This is a millisecond-level timestamp relative to 00:00 of the day. The value must be in the range of 0-86400000).
  /// [start] The start time of each day when the rule is effective. This is a millisecond-level timestamp relative to 00:00 of the day. The value must be in the range of [0-86400000).
  DefenseRuleConfigTimeConfigWeekTimePeriodDayPeriod({
    this.end,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': ?end,
      'start': ?start,
    };
  }

  factory DefenseRuleConfigTimeConfigWeekTimePeriodDayPeriod.fromMap(Map<String, dynamic> map) {
    return DefenseRuleConfigTimeConfigWeekTimePeriodDayPeriod(
      end: map['end'] == null ? null : map['end'] as int,
      start: map['start'] == null ? null : map['start'] as int,
    );
  }
}

