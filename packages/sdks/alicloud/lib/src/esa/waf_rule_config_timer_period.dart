// ignore_for_file: unused_element, unnecessary_cast


class WafRuleConfigTimerPeriod {
  /// End time in HH:mm:ss format
  final String? end;
  /// Start time in HH:mm:ss format
  final String? start;

  /// Creates a new [WafRuleConfigTimerPeriod].
  /// [end] End time in HH:mm:ss format
  /// [start] Start time in HH:mm:ss format
  WafRuleConfigTimerPeriod({
    this.end,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': ?end,
      'start': ?start,
    };
  }

  factory WafRuleConfigTimerPeriod.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigTimerPeriod(
      end: map['end'] == null ? null : map['end'] as String,
      start: map['start'] == null ? null : map['start'] as String,
    );
  }
}

