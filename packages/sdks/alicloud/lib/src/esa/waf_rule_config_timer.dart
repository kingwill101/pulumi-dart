// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_rule_config_timer_period.dart';
import 'waf_rule_config_timer_weekly_period.dart';

class WafRuleConfigTimer {
  final pulumi.Input<List<WafRuleConfigTimerPeriod>>? periods;
  /// Timing type:
  final pulumi.Input<String>? scopes;
  /// Weekly recurring time schedules. See `weekly_periods` below.
  final pulumi.Input<List<WafRuleConfigTimerWeeklyPeriod>>? weeklyPeriods;
  /// The time zone. If it is not specified, the default value is UTC +00:00.  Example: 8 means East Zone 8,-8 means West Zone 8  Range:-12 -+14
  final pulumi.Input<int>? zone;

  /// Creates a new [WafRuleConfigTimer].
  /// [periods] Optional.
  /// [scopes] Timing type:
  /// [weeklyPeriods] Weekly recurring time schedules. See `weekly_periods` below.
  /// [zone] The time zone. If it is not specified, the default value is UTC +00:00.  Example: 8 means East Zone 8,-8 means West Zone 8  Range:-12 -+14
  const WafRuleConfigTimer({
    this.periods,
    this.scopes,
    this.weeklyPeriods,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'periods': ?pulumi.Input.mapOptionalInputValue<List<WafRuleConfigTimerPeriod>, List<Map<String, dynamic>>>(periods, (value) => pulumi.Input.encodeList<WafRuleConfigTimerPeriod, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scopes': ?scopes,
      'weeklyPeriods': ?pulumi.Input.mapOptionalInputValue<List<WafRuleConfigTimerWeeklyPeriod>, List<Map<String, dynamic>>>(weeklyPeriods, (value) => pulumi.Input.encodeList<WafRuleConfigTimerWeeklyPeriod, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zone': ?zone,
    };
  }

  factory WafRuleConfigTimer.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigTimer(
      periods: (() { final guardedValue = map['periods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WafRuleConfigTimerPeriod>(guardedValue, (value) => WafRuleConfigTimerPeriod.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weeklyPeriods: (() { final guardedValue = map['weeklyPeriods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WafRuleConfigTimerWeeklyPeriod>(guardedValue, (value) => WafRuleConfigTimerWeeklyPeriod.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

