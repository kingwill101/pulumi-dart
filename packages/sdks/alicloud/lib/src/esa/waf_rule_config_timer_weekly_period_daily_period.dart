// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WafRuleConfigTimerWeeklyPeriodDailyPeriod {
  /// End time in HH:mm:ss format
  final pulumi.Input<String>? end;
  /// Start time in HH:mm:ss format
  final pulumi.Input<String>? start;

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
      end: map['end'] == null ? null : (map['end'] as String).input(),
      start: map['start'] == null ? null : (map['start'] as String).input(),
    );
  }
}

