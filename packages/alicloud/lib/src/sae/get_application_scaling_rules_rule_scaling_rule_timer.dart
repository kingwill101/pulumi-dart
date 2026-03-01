// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_scaling_rules_rule_scaling_rule_timer_schedule.dart';

class GetApplicationScalingRulesRuleScalingRuleTimer {
  /// The short-term start date of the timed elastic scaling strategy.
  final String beginDate;
  /// The short-term end date of the timed elastic scaling strategy.
  final String endDate;
  /// The period in which a timed elastic scaling strategy is executed.
  final String period;
  /// Trigger point in time within a single day.
  final List<GetApplicationScalingRulesRuleScalingRuleTimerSchedule> schedules;

  /// Creates a new [GetApplicationScalingRulesRuleScalingRuleTimer].
  /// [beginDate] The short-term start date of the timed elastic scaling strategy.
  /// [endDate] The short-term end date of the timed elastic scaling strategy.
  /// [period] The period in which a timed elastic scaling strategy is executed.
  /// [schedules] Trigger point in time within a single day.
  GetApplicationScalingRulesRuleScalingRuleTimer({
    required this.beginDate,
    required this.endDate,
    required this.period,
    required this.schedules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'beginDate': beginDate,
      'endDate': endDate,
      'period': period,
      'schedules': pulumi.Input.encodeList<GetApplicationScalingRulesRuleScalingRuleTimerSchedule, Map<String, dynamic>>(schedules, (value) => value.toMap()),
    };
  }

  factory GetApplicationScalingRulesRuleScalingRuleTimer.fromMap(Map<String, dynamic> map) {
    return GetApplicationScalingRulesRuleScalingRuleTimer(
      beginDate: map['beginDate'] as String,
      endDate: map['endDate'] as String,
      period: map['period'] as String,
      schedules: pulumi.Input.decodeList<GetApplicationScalingRulesRuleScalingRuleTimerSchedule>(map['schedules'], (value) => GetApplicationScalingRulesRuleScalingRuleTimerSchedule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

