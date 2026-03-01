// ignore_for_file: unused_element, unnecessary_cast


class WafRuleConfigTimerWeeklyPeriodDailyPeriod {
  /// End time in HH:mm:ss format
  final String? end;
  /// Start time in HH:mm:ss format
  final String? start;

  /// Creates a new [WafRuleConfigTimerWeeklyPeriodDailyPeriod].
  /// [end] End time in HH:mm:ss format
  /// [start] Start time in HH:mm:ss format
  WafRuleConfigTimerWeeklyPeriodDailyPeriod({
    this.end,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': ?end,
      'start': ?start,
    };
  }

  factory WafRuleConfigTimerWeeklyPeriodDailyPeriod.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigTimerWeeklyPeriodDailyPeriod(
      end: map['end'] == null ? null : map['end'] as String,
      start: map['start'] == null ? null : map['start'] as String,
    );
  }
}

