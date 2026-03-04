// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_scaling_rule_scaling_rule_timer_schedule.dart';

class ApplicationScalingRuleScalingRuleTimer {
  /// The Start date. When the `begin_date` and `end_date` values are empty. it indicates long-term execution and is the default value.
  final pulumi.Input<String>? beginDate;

  /// The End Date. When the `begin_date` and `end_date` values are empty. it indicates long-term execution and is the default value.
  final pulumi.Input<String>? endDate;

  /// The period in which a timed elastic scaling strategy is executed.
  final pulumi.Input<String>? period;

  /// Resilient Scaling Strategy Trigger Timing. See `schedules` below.
  final pulumi.Input<List<ApplicationScalingRuleScalingRuleTimerSchedule>>?
  schedules;

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
      'schedules':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApplicationScalingRuleScalingRuleTimerSchedule>,
            List<Map<String, dynamic>>
          >(
            schedules,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationScalingRuleScalingRuleTimerSchedule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ApplicationScalingRuleScalingRuleTimer.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationScalingRuleScalingRuleTimer(
      beginDate: (() {
        final guardedValue = map['beginDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endDate: (() {
        final guardedValue = map['endDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      period: (() {
        final guardedValue = map['period'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      schedules: (() {
        final guardedValue = map['schedules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<ApplicationScalingRuleScalingRuleTimerSchedule>(
            guardedValue,
            (value) => ApplicationScalingRuleScalingRuleTimerSchedule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
