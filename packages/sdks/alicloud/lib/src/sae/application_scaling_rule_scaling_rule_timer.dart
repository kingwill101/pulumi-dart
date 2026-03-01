// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_scaling_rule_scaling_rule_timer_schedule.dart';

class ApplicationScalingRuleScalingRuleTimer {
  /// The Start date. When the `begin_date` and `end_date` values are empty. it indicates long-term execution and is the default value.
  final String? beginDate;
  /// The End Date. When the `begin_date` and `end_date` values are empty. it indicates long-term execution and is the default value.
  final String? endDate;
  /// The period in which a timed elastic scaling strategy is executed.
  final String? period;
  /// Resilient Scaling Strategy Trigger Timing. See `schedules` below.
  final List<ApplicationScalingRuleScalingRuleTimerSchedule>? schedules;

  /// Creates a new [ApplicationScalingRuleScalingRuleTimer].
  /// [beginDate] The Start date. When the `begin_date` and `end_date` values are empty. it indicates long-term execution and is the default value.
  /// [endDate] The End Date. When the `begin_date` and `end_date` values are empty. it indicates long-term execution and is the default value.
  /// [period] The period in which a timed elastic scaling strategy is executed.
  /// [schedules] Resilient Scaling Strategy Trigger Timing. See `schedules` below.
  ApplicationScalingRuleScalingRuleTimer({
    this.beginDate,
    this.endDate,
    this.period,
    this.schedules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'beginDate': ?beginDate,
      'endDate': ?endDate,
      'period': ?period,
      'schedules': ?schedules == null ? null : pulumi.Input.encodeList<ApplicationScalingRuleScalingRuleTimerSchedule, Map<String, dynamic>>(schedules!, (value) => value.toMap()),
    };
  }

  factory ApplicationScalingRuleScalingRuleTimer.fromMap(Map<String, dynamic> map) {
    return ApplicationScalingRuleScalingRuleTimer(
      beginDate: map['beginDate'] == null ? null : map['beginDate'] as String,
      endDate: map['endDate'] == null ? null : map['endDate'] as String,
      period: map['period'] == null ? null : map['period'] as String,
      schedules: map['schedules'] == null ? null : pulumi.Input.decodeList<ApplicationScalingRuleScalingRuleTimerSchedule>(map['schedules'], (value) => ApplicationScalingRuleScalingRuleTimerSchedule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

