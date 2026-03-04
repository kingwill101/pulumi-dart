// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_group_monitoring_agent_process_alert_config_target_list.dart';

class ServiceGroupMonitoringAgentProcessAlertConfig {
  /// The operator that is used to compare the metric value with the threshold. Valid values: `GreaterThanOrEqualToThreshold`, `GreaterThanThreshold`, `LessThanOrEqualToThreshold`, `LessThanThreshold`, `NotEqualToThreshold`, `GreaterThanYesterday`, `LessThanYesterday`, `GreaterThanLastWeek`, `LessThanLastWeek`, `GreaterThanLastPeriod`, `LessThanLastPeriod`.
  final pulumi.Input<String> comparisonOperator;

  /// The time period during which the alert rule is effective.
  final pulumi.Input<String>? effectiveInterval;

  /// The alert level. Valid values: `critical`, `warn`, `info`.
  final pulumi.Input<String> escalationsLevel;

  /// The mute period during which new alert notifications are not sent even if the trigger conditions are met. Unit: seconds.
  final pulumi.Input<int>? silenceTime;

  /// The statistical method for alerts. Valid values: `Average`.
  final pulumi.Input<String> statistics;

  /// The alert triggers. See `target_list` below.
  final pulumi.Input<
    List<ServiceGroupMonitoringAgentProcessAlertConfigTargetList>
  >?
  targetLists;

  /// The alert threshold.
  final pulumi.Input<String> threshold;

  /// The number of times for which the threshold can be consecutively exceeded.
  final pulumi.Input<String> times;

  /// The callback URL.
  final pulumi.Input<String>? webhook;

  /// Creates a new [ServiceGroupMonitoringAgentProcessAlertConfig].
  /// [comparisonOperator] The operator that is used to compare the metric value with the threshold. Valid values: `GreaterThanOrEqualToThreshold`, `GreaterThanThreshold`, `LessThanOrEqualToThreshold`, `LessThanThreshold`, `NotEqualToThreshold`, `GreaterThanYesterday`, `LessThanYesterday`, `GreaterThanLastWeek`, `LessThanLastWeek`, `GreaterThanLastPeriod`, `LessThanLastPeriod`.
  /// [effectiveInterval] The time period during which the alert rule is effective.
  /// [escalationsLevel] The alert level. Valid values: `critical`, `warn`, `info`.
  /// [silenceTime] The mute period during which new alert notifications are not sent even if the trigger conditions are met. Unit: seconds.
  /// [statistics] The statistical method for alerts. Valid values: `Average`.
  /// [targetLists] The alert triggers. See `target_list` below.
  /// [threshold] The alert threshold.
  /// [times] The number of times for which the threshold can be consecutively exceeded.
  /// [webhook] The callback URL.
  ServiceGroupMonitoringAgentProcessAlertConfig({
    required this.comparisonOperator,
    this.effectiveInterval,
    required this.escalationsLevel,
    this.silenceTime,
    required this.statistics,
    this.targetLists,
    required this.threshold,
    required this.times,
    this.webhook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparisonOperator': comparisonOperator,
      'effectiveInterval': ?effectiveInterval,
      'escalationsLevel': escalationsLevel,
      'silenceTime': ?silenceTime,
      'statistics': statistics,
      'targetLists':
          ?pulumi.Input.mapOptionalInputValue<
            List<ServiceGroupMonitoringAgentProcessAlertConfigTargetList>,
            List<Map<String, dynamic>>
          >(
            targetLists,
            (value) =>
                pulumi.Input.encodeList<
                  ServiceGroupMonitoringAgentProcessAlertConfigTargetList,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'threshold': threshold,
      'times': times,
      'webhook': ?webhook,
    };
  }

  factory ServiceGroupMonitoringAgentProcessAlertConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceGroupMonitoringAgentProcessAlertConfig(
      comparisonOperator: pulumi.Input.fromValue(
        map['comparisonOperator'] as String,
      ),
      effectiveInterval: (() {
        final guardedValue = map['effectiveInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      escalationsLevel: pulumi.Input.fromValue(
        map['escalationsLevel'] as String,
      ),
      silenceTime: (() {
        final guardedValue = map['silenceTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      statistics: pulumi.Input.fromValue(map['statistics'] as String),
      targetLists: (() {
        final guardedValue = map['targetLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ServiceGroupMonitoringAgentProcessAlertConfigTargetList
          >(
            guardedValue,
            (value) =>
                ServiceGroupMonitoringAgentProcessAlertConfigTargetList.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      threshold: pulumi.Input.fromValue(map['threshold'] as String),
      times: pulumi.Input.fromValue(map['times'] as String),
      webhook: (() {
        final guardedValue = map['webhook'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
