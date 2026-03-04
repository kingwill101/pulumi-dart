// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defense_rule_config_time_config_week_time_period_day_period.dart';

class DefenseRuleConfigTimeConfigWeekTimePeriod {
  /// The time period of each day when the rule is effective. It includes the start time start and end time end. You can specify multiple time periods.
  final pulumi.Input<String>? day;

  /// The time period of each day when the rule is effective.  See `day_periods` below.
  final pulumi.Input<List<DefenseRuleConfigTimeConfigWeekTimePeriodDayPeriod>>?
  dayPeriods;

  /// Creates a new [DefenseRuleConfigTimeConfigWeekTimePeriod].
  /// [day] The time period of each day when the rule is effective. It includes the start time start and end time end. You can specify multiple time periods.
  /// [dayPeriods] The time period of each day when the rule is effective.  See `day_periods` below.
  DefenseRuleConfigTimeConfigWeekTimePeriod({this.day, this.dayPeriods});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?day,
      'dayPeriods':
          ?pulumi.Input.mapOptionalInputValue<
            List<DefenseRuleConfigTimeConfigWeekTimePeriodDayPeriod>,
            List<Map<String, dynamic>>
          >(
            dayPeriods,
            (value) =>
                pulumi.Input.encodeList<
                  DefenseRuleConfigTimeConfigWeekTimePeriodDayPeriod,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DefenseRuleConfigTimeConfigWeekTimePeriod.fromMap(
    Map<String, dynamic> map,
  ) {
    return DefenseRuleConfigTimeConfigWeekTimePeriod(
      day: (() {
        final guardedValue = map['day'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dayPeriods: (() {
        final guardedValue = map['dayPeriods'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            DefenseRuleConfigTimeConfigWeekTimePeriodDayPeriod
          >(
            guardedValue,
            (value) =>
                DefenseRuleConfigTimeConfigWeekTimePeriodDayPeriod.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
