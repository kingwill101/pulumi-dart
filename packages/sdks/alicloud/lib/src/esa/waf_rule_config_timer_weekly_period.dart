// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_rule_config_timer_weekly_period_daily_period.dart';

class WafRuleConfigTimerWeeklyPeriod {
  /// Daily effective time periods within a weekly schedule. See `daily_periods` below.
  final List<WafRuleConfigTimerWeeklyPeriodDailyPeriod>? dailyPeriods;
  /// Cycle, multiple use comma separated, 1-7 respectively represent Monday-Sunday.  Example: Monday, Wednesday value is "1,3"
  final String? days;

  /// Creates a new [WafRuleConfigTimerWeeklyPeriod].
  /// [dailyPeriods] Daily effective time periods within a weekly schedule. See `daily_periods` below.
  /// [days] Cycle, multiple use comma separated, 1-7 respectively represent Monday-Sunday.  Example: Monday, Wednesday value is "1,3"
  WafRuleConfigTimerWeeklyPeriod({
    this.dailyPeriods,
    this.days,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyPeriods': ?dailyPeriods == null ? null : pulumi.Input.encodeList<WafRuleConfigTimerWeeklyPeriodDailyPeriod, Map<String, dynamic>>(dailyPeriods!, (value) => value.toMap()),
      'days': ?days,
    };
  }

  factory WafRuleConfigTimerWeeklyPeriod.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigTimerWeeklyPeriod(
      dailyPeriods: map['dailyPeriods'] == null ? null : pulumi.Input.decodeList<WafRuleConfigTimerWeeklyPeriodDailyPeriod>(map['dailyPeriods'], (value) => WafRuleConfigTimerWeeklyPeriodDailyPeriod.fromMap((value as Map).cast<String, dynamic>())),
      days: map['days'] == null ? null : map['days'] as String,
    );
  }
}

