// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defense_rule_config_time_config_time_period.dart';
import 'defense_rule_config_time_config_week_time_period.dart';

class DefenseRuleConfigTimeConfig {
  /// The time period during which the rule is effective. This parameter is required when you set the `TimeScope` parameter to `period`. A maximum of five time periods can be set. See `time_periods` below.
  final List<DefenseRuleConfigTimeConfigTimePeriod>? timePeriods;
  /// The effective period of the rule. Valid values:
  final String? timeScope;
  /// The time zone in which the rule is effective. The default value is `8`. The value must be in the range of - 12 to 12. `0` indicates UTC. `8` indicates UTC+8. **-8** indicates UTC-8.
  final int? timeZone;
  /// The periodic time period during which the rule is effective. This parameter is required when you set the `TimeScope` parameter to `cycle`. A maximum of five time periods can be set. See `week_time_periods` below.
  final List<DefenseRuleConfigTimeConfigWeekTimePeriod>? weekTimePeriods;

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
      'timePeriods': ?timePeriods == null ? null : pulumi.Input.encodeList<DefenseRuleConfigTimeConfigTimePeriod, Map<String, dynamic>>(timePeriods!, (value) => value.toMap()),
      'timeScope': ?timeScope,
      'timeZone': ?timeZone,
      'weekTimePeriods': ?weekTimePeriods == null ? null : pulumi.Input.encodeList<DefenseRuleConfigTimeConfigWeekTimePeriod, Map<String, dynamic>>(weekTimePeriods!, (value) => value.toMap()),
    };
  }

  factory DefenseRuleConfigTimeConfig.fromMap(Map<String, dynamic> map) {
    return DefenseRuleConfigTimeConfig(
      timePeriods: map['timePeriods'] == null ? null : pulumi.Input.decodeList<DefenseRuleConfigTimeConfigTimePeriod>(map['timePeriods'], (value) => DefenseRuleConfigTimeConfigTimePeriod.fromMap((value as Map).cast<String, dynamic>())),
      timeScope: map['timeScope'] == null ? null : map['timeScope'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as int,
      weekTimePeriods: map['weekTimePeriods'] == null ? null : pulumi.Input.decodeList<DefenseRuleConfigTimeConfigWeekTimePeriod>(map['weekTimePeriods'], (value) => DefenseRuleConfigTimeConfigWeekTimePeriod.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

