// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defense_rule_config_time_config_time_period.dart';
import 'defense_rule_config_time_config_week_time_period.dart';

class DefenseRuleConfigTimeConfig {
  /// The time period during which the rule is effective. This parameter is required when you set the `TimeScope` parameter to `period`. A maximum of five time periods can be set. See `time_periods` below.
  final pulumi.Input<List<DefenseRuleConfigTimeConfigTimePeriod>>? timePeriods;
  /// The effective period of the rule. Valid values:
  final pulumi.Input<String>? timeScope;
  /// The time zone in which the rule is effective. The default value is `8`. The value must be in the range of - 12 to 12. `0` indicates UTC. `8` indicates UTC+8. **-8** indicates UTC-8.
  final pulumi.Input<int>? timeZone;
  /// The periodic time period during which the rule is effective. This parameter is required when you set the `TimeScope` parameter to `cycle`. A maximum of five time periods can be set. See `week_time_periods` below.
  final pulumi.Input<List<DefenseRuleConfigTimeConfigWeekTimePeriod>>? weekTimePeriods;

  /// Creates a new [DefenseRuleConfigTimeConfig].
  /// [timePeriods] The time period during which the rule is effective. This parameter is required when you set the `TimeScope` parameter to `period`. A maximum of five time periods can be set. See `time_periods` below.
  /// [timeScope] The effective period of the rule. Valid values:
  /// [timeZone] The time zone in which the rule is effective. The default value is `8`. The value must be in the range of - 12 to 12. `0` indicates UTC. `8` indicates UTC+8. **-8** indicates UTC-8.
  /// [weekTimePeriods] The periodic time period during which the rule is effective. This parameter is required when you set the `TimeScope` parameter to `cycle`. A maximum of five time periods can be set. See `week_time_periods` below.
  DefenseRuleConfigTimeConfig({
    this.timePeriods,
    this.timeScope,
    this.timeZone,
    this.weekTimePeriods,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timePeriods': ?pulumi.Input.mapOptionalInputValue<List<DefenseRuleConfigTimeConfigTimePeriod>, List<Map<String, dynamic>>>(timePeriods, (value) => pulumi.Input.encodeList<DefenseRuleConfigTimeConfigTimePeriod, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeScope': ?timeScope,
      'timeZone': ?timeZone,
      'weekTimePeriods': ?pulumi.Input.mapOptionalInputValue<List<DefenseRuleConfigTimeConfigWeekTimePeriod>, List<Map<String, dynamic>>>(weekTimePeriods, (value) => pulumi.Input.encodeList<DefenseRuleConfigTimeConfigWeekTimePeriod, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DefenseRuleConfigTimeConfig.fromMap(Map<String, dynamic> map) {
    return DefenseRuleConfigTimeConfig(
      timePeriods: (() { final guardedValue = map['timePeriods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DefenseRuleConfigTimeConfigTimePeriod>(guardedValue, (value) => DefenseRuleConfigTimeConfigTimePeriod.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeScope: (() { final guardedValue = map['timeScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      weekTimePeriods: (() { final guardedValue = map['weekTimePeriods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DefenseRuleConfigTimeConfigWeekTimePeriod>(guardedValue, (value) => DefenseRuleConfigTimeConfigWeekTimePeriod.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

