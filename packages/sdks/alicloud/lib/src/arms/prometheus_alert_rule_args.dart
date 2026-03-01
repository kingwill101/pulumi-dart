// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prometheus_alert_rule_annotation.dart';
import 'prometheus_alert_rule_label.dart';

/// {@template pulumi_arms_prometheus_alert_rule_prometheus_alert_rule_args_doc}
/// The set of arguments for PrometheusAlertRule.
/// {@endtemplate}
/// {@macro pulumi_arms_prometheus_alert_rule_prometheus_alert_rule_args_doc}
class PrometheusAlertRuleArgs {
  /// The annotations of the alert rule. See `annotations` below.
  final pulumi.Input<List<PrometheusAlertRuleAnnotation>>? annotations;
  /// The ID of the cluster.
  final pulumi.Input<String> clusterId;
  /// The ID of the notification policy. This parameter is required when the `notify_type` parameter is set to `DISPATCH_RULE`.
  final pulumi.Input<String>? dispatchRuleId;
  /// The duration of the alert.
  final pulumi.Input<String> duration;
  /// The alert rule expression that follows the PromQL syntax.
  final pulumi.Input<String> expression;
  /// The labels of the resource. See `labels` below.
  final pulumi.Input<List<PrometheusAlertRuleLabel>>? labels;
  /// The message of the alert notification.
  final pulumi.Input<String> message;
  /// The method of sending the alert notification. Valid values: `ALERT_MANAGER`, `DISPATCH_RULE`.
  final pulumi.Input<String>? notifyType;
  /// The name of the resource.
  final pulumi.Input<String> prometheusAlertRuleName;
  /// The type of the alert rule.
  final pulumi.Input<String>? type;

  /// Creates a new [PrometheusAlertRuleArgs].
  /// [annotations] The annotations of the alert rule. See `annotations` below.
  /// [clusterId] The ID of the cluster.
  /// [dispatchRuleId] The ID of the notification policy. This parameter is required when the `notify_type` parameter is set to `DISPATCH_RULE`.
  /// [duration] The duration of the alert.
  /// [expression] The alert rule expression that follows the PromQL syntax.
  /// [labels] The labels of the resource. See `labels` below.
  /// [message] The message of the alert notification.
  /// [notifyType] The method of sending the alert notification. Valid values: `ALERT_MANAGER`, `DISPATCH_RULE`.
  /// [prometheusAlertRuleName] The name of the resource.
  /// [type] The type of the alert rule.
  PrometheusAlertRuleArgs({
    pulumi.Output<List<PrometheusAlertRuleAnnotation>>? annotations,
    required pulumi.Output<String> clusterId,
    pulumi.Output<String>? dispatchRuleId,
    required pulumi.Output<String> duration,
    required pulumi.Output<String> expression,
    pulumi.Output<List<PrometheusAlertRuleLabel>>? labels,
    required pulumi.Output<String> message,
    pulumi.Output<String>? notifyType,
    required pulumi.Output<String> prometheusAlertRuleName,
    pulumi.Output<String>? type,
  }) :
      annotations = pulumi.Input.asOptionalInput<List<PrometheusAlertRuleAnnotation>>(annotations),
      clusterId = pulumi.Input.asInput<String>(clusterId),
      dispatchRuleId = pulumi.Input.asOptionalInput<String>(dispatchRuleId),
      duration = pulumi.Input.asInput<String>(duration),
      expression = pulumi.Input.asInput<String>(expression),
      labels = pulumi.Input.asOptionalInput<List<PrometheusAlertRuleLabel>>(labels),
      message = pulumi.Input.asInput<String>(message),
      notifyType = pulumi.Input.asOptionalInput<String>(notifyType),
      prometheusAlertRuleName = pulumi.Input.asInput<String>(prometheusAlertRuleName),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?pulumi.Input.mapOptionalInputValue<List<PrometheusAlertRuleAnnotation>, List<Map<String, dynamic>>>(annotations, (value) => pulumi.Input.encodeList<PrometheusAlertRuleAnnotation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterId': clusterId,
      'dispatchRuleId': ?dispatchRuleId,
      'duration': duration,
      'expression': expression,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<PrometheusAlertRuleLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<PrometheusAlertRuleLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'message': message,
      'notifyType': ?notifyType,
      'prometheusAlertRuleName': prometheusAlertRuleName,
      'type': ?type,
    };
  }

  factory PrometheusAlertRuleArgs.fromMap(Map<String, dynamic> map) {
    return PrometheusAlertRuleArgs(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<PrometheusAlertRuleAnnotation>>(pulumi.Input.decodeList<PrometheusAlertRuleAnnotation>(map['annotations'], (value) => PrometheusAlertRuleAnnotation.fromMap((value as Map).cast<String, dynamic>()))),
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      dispatchRuleId: map['dispatchRuleId'] == null ? null : pulumi.Output.create<String>(map['dispatchRuleId'] as String),
      duration: pulumi.Output.create<String>(map['duration'] as String),
      expression: pulumi.Output.create<String>(map['expression'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<List<PrometheusAlertRuleLabel>>(pulumi.Input.decodeList<PrometheusAlertRuleLabel>(map['labels'], (value) => PrometheusAlertRuleLabel.fromMap((value as Map).cast<String, dynamic>()))),
      message: pulumi.Output.create<String>(map['message'] as String),
      notifyType: map['notifyType'] == null ? null : pulumi.Output.create<String>(map['notifyType'] as String),
      prometheusAlertRuleName: pulumi.Output.create<String>(map['prometheusAlertRuleName'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

