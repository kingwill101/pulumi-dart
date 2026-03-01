// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_group_monitoring_agent_process_alert_config_target_list.dart';

class ServiceGroupMonitoringAgentProcessAlertConfig {
  /// The operator that is used to compare the metric value with the threshold. Valid values: `GreaterThanOrEqualToThreshold`, `GreaterThanThreshold`, `LessThanOrEqualToThreshold`, `LessThanThreshold`, `NotEqualToThreshold`, `GreaterThanYesterday`, `LessThanYesterday`, `GreaterThanLastWeek`, `LessThanLastWeek`, `GreaterThanLastPeriod`, `LessThanLastPeriod`.
  final String comparisonOperator;
  /// The time period during which the alert rule is effective.
  final String? effectiveInterval;
  /// The alert level. Valid values: `critical`, `warn`, `info`.
  final String escalationsLevel;
  /// The mute period during which new alert notifications are not sent even if the trigger conditions are met. Unit: seconds.
  final int? silenceTime;
  /// The statistical method for alerts. Valid values: `Average`.
  final String statistics;
  /// The alert triggers. See `target_list` below.
  final List<ServiceGroupMonitoringAgentProcessAlertConfigTargetList>? targetLists;
  /// The alert threshold.
  final String threshold;
  /// The number of times for which the threshold can be consecutively exceeded.
  final String times;
  /// The callback URL.
  final String? webhook;

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
      'targetLists': ?targetLists == null ? null : pulumi.Input.encodeList<ServiceGroupMonitoringAgentProcessAlertConfigTargetList, Map<String, dynamic>>(targetLists!, (value) => value.toMap()),
      'threshold': threshold,
      'times': times,
      'webhook': ?webhook,
    };
  }

  factory ServiceGroupMonitoringAgentProcessAlertConfig.fromMap(Map<String, dynamic> map) {
    return ServiceGroupMonitoringAgentProcessAlertConfig(
      comparisonOperator: map['comparisonOperator'] as String,
      effectiveInterval: map['effectiveInterval'] == null ? null : map['effectiveInterval'] as String,
      escalationsLevel: map['escalationsLevel'] as String,
      silenceTime: map['silenceTime'] == null ? null : map['silenceTime'] as int,
      statistics: map['statistics'] as String,
      targetLists: map['targetLists'] == null ? null : pulumi.Input.decodeList<ServiceGroupMonitoringAgentProcessAlertConfigTargetList>(map['targetLists'], (value) => ServiceGroupMonitoringAgentProcessAlertConfigTargetList.fromMap((value as Map).cast<String, dynamic>())),
      threshold: map['threshold'] as String,
      times: map['times'] as String,
      webhook: map['webhook'] == null ? null : map['webhook'] as String,
    );
  }
}

