// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alarm_composite_expression.dart';
import 'alarm_escalations_critical.dart';
import 'alarm_escalations_info.dart';
import 'alarm_escalations_warn.dart';
import 'alarm_prometheus.dart';
import 'alarm_target.dart';

/// {@template pulumi_cms_alarm_alarm_args_doc}
/// The set of arguments for Alarm.
/// {@endtemplate}
/// {@macro pulumi_cms_alarm_alarm_args_doc}
class AlarmArgs {
  /// The trigger conditions for multiple metrics. See `composite_expression` below.
  final pulumi.Input<AlarmCompositeExpression>? compositeExpression;

  /// List contact groups of the alarm rule, which must have been created on the console.
  final pulumi.Input<List<String>> contactGroups;

  /// Field `dimensions` has been deprecated from provider version 1.173.0. New field `metric_dimensions` instead.
  final pulumi.Input<Map<String, String>>? dimensions;

  /// The interval of effecting alarm rule. It format as "hh:mm-hh:mm", like "0:00-4:00". Default value: `00:00-23:59`.
  final pulumi.Input<String>? effectiveInterval;

  /// Whether to enable alarm rule. Default value: `true`.
  final pulumi.Input<bool>? enabled;

  /// Field `end_time` has been deprecated from provider version 1.50.0. New field `effective_interval` instead.
  final pulumi.Input<int>? endTime;

  /// A configuration of critical alarm. See `escalations_critical` below.
  final pulumi.Input<AlarmEscalationsCritical>? escalationsCritical;

  /// A configuration of critical info. See `escalations_info` below.
  final pulumi.Input<AlarmEscalationsInfo>? escalationsInfo;

  /// A configuration of critical warn. See `escalations_warn` below.
  final pulumi.Input<AlarmEscalationsWarn>? escalationsWarn;

  /// The name of the metric, such as `CPUUtilization` and `networkin_rate`. For more information, see [Metrics Reference](https://www.alibabacloud.com/help/doc-detail/28619.htm).
  final pulumi.Input<String> metric;

  /// Map of the resources associated with the alarm rule, such as "instanceId", "device" and "port". Each key's value is a string, and it uses comma to split multiple items. For more information, see [Metrics Reference](https://www.alibabacloud.com/help/doc-detail/28619.htm).
  final pulumi.Input<String>? metricDimensions;

  /// The name of the alert rule.
  final pulumi.Input<String>? name;

  /// The statistical period of the metric. Unit: seconds. Default value: `300`.
  final pulumi.Input<int>? period;

  /// The namespace of the cloud service, such as `acs_ecs_dashboard` and `acs_rds_dashboard`. For more information, see [Metrics Reference](https://www.alibabacloud.com/help/doc-detail/28619.htm).
  /// **NOTE:** The `dimensions` and `metric_dimensions` must be empty when `project` is `acs_prometheus`, otherwise, one of them must be set.
  final pulumi.Input<String> project;

  /// The Prometheus alert rule. See `prometheus` below. **Note:** This parameter is required only when you create a Prometheus alert rule for Hybrid Cloud Monitoring.
  final pulumi.Input<List<AlarmPrometheus>>? prometheuses;

  /// Notification silence period in the alarm state, in seconds. Default value: `86400`. Valid value range: [300, 86400].
  final pulumi.Input<int>? silenceTime;

  /// Field `start_time` has been deprecated from provider version 1.50.0. New field `effective_interval` instead.
  final pulumi.Input<int>? startTime;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Adds or modifies the push channels of an alert rule. See `targets` below.
  final pulumi.Input<List<AlarmTarget>>? targets;

  /// The webhook that should be called when the alarm is triggered. Currently, only http protocol is supported. Default is empty string.
  final pulumi.Input<String>? webhook;

  /// Creates a new [AlarmArgs].
  /// [compositeExpression] The trigger conditions for multiple metrics. See `composite_expression` below.
  /// [contactGroups] List contact groups of the alarm rule, which must have been created on the console.
  /// [dimensions] Field `dimensions` has been deprecated from provider version 1.173.0. New field `metric_dimensions` instead.
  /// [effectiveInterval] The interval of effecting alarm rule. It format as "hh:mm-hh:mm", like "0:00-4:00". Default value: `00:00-23:59`.
  /// [enabled] Whether to enable alarm rule. Default value: `true`.
  /// [endTime] Field `end_time` has been deprecated from provider version 1.50.0. New field `effective_interval` instead.
  /// [escalationsCritical] A configuration of critical alarm. See `escalations_critical` below.
  /// [escalationsInfo] A configuration of critical info. See `escalations_info` below.
  /// [escalationsWarn] A configuration of critical warn. See `escalations_warn` below.
  /// [metric] The name of the metric, such as `CPUUtilization` and `networkin_rate`. For more information, see [Metrics Reference](https://www.alibabacloud.com/help/doc-detail/28619.htm).
  /// [metricDimensions] Map of the resources associated with the alarm rule, such as "instanceId", "device" and "port". Each key's value is a string, and it uses comma to split multiple items. For more information, see [Metrics Reference](https://www.alibabacloud.com/help/doc-detail/28619.htm).
  /// [name] The name of the alert rule.
  /// [period] The statistical period of the metric. Unit: seconds. Default value: `300`.
  /// [project] The namespace of the cloud service, such as `acs_ecs_dashboard` and `acs_rds_dashboard`. For more information, see [Metrics Reference](https://www.alibabacloud.com/help/doc-detail/28619.htm).
  /// [prometheuses] The Prometheus alert rule. See `prometheus` below. **Note:** This parameter is required only when you create a Prometheus alert rule for Hybrid Cloud Monitoring.
  /// [silenceTime] Notification silence period in the alarm state, in seconds. Default value: `86400`. Valid value range: [300, 86400].
  /// [startTime] Field `start_time` has been deprecated from provider version 1.50.0. New field `effective_interval` instead.
  /// [tags] A mapping of tags to assign to the resource.
  /// [targets] Adds or modifies the push channels of an alert rule. See `targets` below.
  /// [webhook] The webhook that should be called when the alarm is triggered. Currently, only http protocol is supported. Default is empty string.
  AlarmArgs({
    this.compositeExpression,
    required this.contactGroups,
    this.dimensions,
    this.effectiveInterval,
    this.enabled,
    this.endTime,
    this.escalationsCritical,
    this.escalationsInfo,
    this.escalationsWarn,
    required this.metric,
    this.metricDimensions,
    this.name,
    this.period,
    required this.project,
    this.prometheuses,
    this.silenceTime,
    this.startTime,
    this.tags,
    this.targets,
    this.webhook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compositeExpression':
          ?pulumi.Input.mapOptionalInputValue<
            AlarmCompositeExpression,
            Map<String, dynamic>
          >(compositeExpression, (value) => value.toMap()),
      'contactGroups': contactGroups,
      'dimensions': ?dimensions,
      'effectiveInterval': ?effectiveInterval,
      'enabled': ?enabled,
      'endTime': ?endTime,
      'escalationsCritical':
          ?pulumi.Input.mapOptionalInputValue<
            AlarmEscalationsCritical,
            Map<String, dynamic>
          >(escalationsCritical, (value) => value.toMap()),
      'escalationsInfo':
          ?pulumi.Input.mapOptionalInputValue<
            AlarmEscalationsInfo,
            Map<String, dynamic>
          >(escalationsInfo, (value) => value.toMap()),
      'escalationsWarn':
          ?pulumi.Input.mapOptionalInputValue<
            AlarmEscalationsWarn,
            Map<String, dynamic>
          >(escalationsWarn, (value) => value.toMap()),
      'metric': metric,
      'metricDimensions': ?metricDimensions,
      'name': ?name,
      'period': ?period,
      'project': project,
      'prometheuses':
          ?pulumi.Input.mapOptionalInputValue<
            List<AlarmPrometheus>,
            List<Map<String, dynamic>>
          >(
            prometheuses,
            (value) =>
                pulumi.Input.encodeList<AlarmPrometheus, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'silenceTime': ?silenceTime,
      'startTime': ?startTime,
      'tags': ?tags,
      'targets':
          ?pulumi.Input.mapOptionalInputValue<
            List<AlarmTarget>,
            List<Map<String, dynamic>>
          >(
            targets,
            (value) =>
                pulumi.Input.encodeList<AlarmTarget, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'webhook': ?webhook,
    };
  }

  factory AlarmArgs.fromMap(Map<String, dynamic> map) {
    return AlarmArgs(
      compositeExpression: (() {
        final guardedValue = map['compositeExpression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AlarmCompositeExpression.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      contactGroups: pulumi.Input.fromValue(
        (map['contactGroups'] as List).cast<String>(),
      ),
      dimensions: (() {
        final guardedValue = map['dimensions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      effectiveInterval: (() {
        final guardedValue = map['effectiveInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      endTime: (() {
        final guardedValue = map['endTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      escalationsCritical: (() {
        final guardedValue = map['escalationsCritical'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AlarmEscalationsCritical.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      escalationsInfo: (() {
        final guardedValue = map['escalationsInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AlarmEscalationsInfo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      escalationsWarn: (() {
        final guardedValue = map['escalationsWarn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AlarmEscalationsWarn.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      metric: pulumi.Input.fromValue(map['metric'] as String),
      metricDimensions: (() {
        final guardedValue = map['metricDimensions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      period: (() {
        final guardedValue = map['period'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      project: pulumi.Input.fromValue(map['project'] as String),
      prometheuses: (() {
        final guardedValue = map['prometheuses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AlarmPrometheus>(
            guardedValue,
            (value) =>
                AlarmPrometheus.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      silenceTime: (() {
        final guardedValue = map['silenceTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      targets: (() {
        final guardedValue = map['targets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AlarmTarget>(
            guardedValue,
            (value) =>
                AlarmTarget.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      webhook: (() {
        final guardedValue = map['webhook'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
