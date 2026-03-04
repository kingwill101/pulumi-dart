// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_rule_config_timer_weekly_period_daily_period.dart';

class WafRuleConfigTimerWeeklyPeriod {
  /// Daily effective time periods within a weekly schedule. See `daily_periods` below.
  final pulumi.Input<List<WafRuleConfigTimerWeeklyPeriodDailyPeriod>>?
  dailyPeriods;

  /// Cycle, multiple use comma separated, 1-7 respectively represent Monday-Sunday.  Example: Monday, Wednesday value is "1,3"
  final pulumi.Input<String>? days;

  /// Creates a new [WafRuleConfigTimerWeeklyPeriod].
  /// [dailyPeriods] Daily effective time periods within a weekly schedule. See `daily_periods` below.
  /// [days] Cycle, multiple use comma separated, 1-7 respectively represent Monday-Sunday.  Example: Monday, Wednesday value is "1,3"
  WafRuleConfigTimerWeeklyPeriod({this.dailyPeriods, this.days});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyPeriods':
          ?pulumi.Input.mapOptionalInputValue<
            List<WafRuleConfigTimerWeeklyPeriodDailyPeriod>,
            List<Map<String, dynamic>>
          >(
            dailyPeriods,
            (value) =>
                pulumi.Input.encodeList<
                  WafRuleConfigTimerWeeklyPeriodDailyPeriod,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'days': ?days,
    };
  }

  factory WafRuleConfigTimerWeeklyPeriod.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigTimerWeeklyPeriod(
      dailyPeriods: (() {
        final guardedValue = map['dailyPeriods'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WafRuleConfigTimerWeeklyPeriodDailyPeriod>(
            guardedValue,
            (value) => WafRuleConfigTimerWeeklyPeriodDailyPeriod.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      days: (() {
        final guardedValue = map['days'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
