// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prometheus_alert_rule_annotation.dart';
import 'prometheus_alert_rule_label.dart';

/// Input properties used for looking up and filtering PrometheusAlertRule resources.
class PrometheusAlertRuleState {
  /// The annotations of the alert rule. See `annotations` below.
  final pulumi.Input<List<PrometheusAlertRuleAnnotation>>? annotations;
  /// The ID of the cluster.
  final pulumi.Input<String>? clusterId;
  /// The ID of the notification policy. This parameter is required when the `notify_type` parameter is set to `DISPATCH_RULE`.
  final pulumi.Input<String>? dispatchRuleId;
  /// The duration of the alert.
  final pulumi.Input<String>? duration;
  /// The alert rule expression that follows the PromQL syntax.
  final pulumi.Input<String>? expression;
  /// The labels of the resource. See `labels` below.
  final pulumi.Input<List<PrometheusAlertRuleLabel>>? labels;
  /// The message of the alert notification.
  final pulumi.Input<String>? message;
  /// The method of sending the alert notification. Valid values: `ALERT_MANAGER`, `DISPATCH_RULE`.
  final pulumi.Input<String>? notifyType;
  /// The first ID of the resource.
  final pulumi.Input<int>? prometheusAlertRuleId;
  /// The name of the resource.
  final pulumi.Input<String>? prometheusAlertRuleName;
  /// The status of the resource. Valid values: `0`, `1`.
  final pulumi.Input<int>? status;
  /// The type of the alert rule.
  final pulumi.Input<String>? type;

  /// Creates a new [PrometheusAlertRuleState].
  /// [annotations] The annotations of the alert rule. See `annotations` below.
  /// [clusterId] The ID of the cluster.
  /// [dispatchRuleId] The ID of the notification policy. This parameter is required when the `notify_type` parameter is set to `DISPATCH_RULE`.
  /// [duration] The duration of the alert.
  /// [expression] The alert rule expression that follows the PromQL syntax.
  /// [labels] The labels of the resource. See `labels` below.
  /// [message] The message of the alert notification.
  /// [notifyType] The method of sending the alert notification. Valid values: `ALERT_MANAGER`, `DISPATCH_RULE`.
  /// [prometheusAlertRuleId] The first ID of the resource.
  /// [prometheusAlertRuleName] The name of the resource.
  /// [status] The status of the resource. Valid values: `0`, `1`.
  /// [type] The type of the alert rule.
  PrometheusAlertRuleState({
    this.annotations,
    this.clusterId,
    this.dispatchRuleId,
    this.duration,
    this.expression,
    this.labels,
    this.message,
    this.notifyType,
    this.prometheusAlertRuleId,
    this.prometheusAlertRuleName,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?pulumi.Input.mapOptionalInputValue<List<PrometheusAlertRuleAnnotation>, List<Map<String, dynamic>>>(annotations, (value) => pulumi.Input.encodeList<PrometheusAlertRuleAnnotation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterId': ?clusterId,
      'dispatchRuleId': ?dispatchRuleId,
      'duration': ?duration,
      'expression': ?expression,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<PrometheusAlertRuleLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<PrometheusAlertRuleLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'message': ?message,
      'notifyType': ?notifyType,
      'prometheusAlertRuleId': ?prometheusAlertRuleId,
      'prometheusAlertRuleName': ?prometheusAlertRuleName,
      'status': ?status,
      'type': ?type,
    };
  }

  factory PrometheusAlertRuleState.fromMap(Map<String, dynamic> map) {
    return PrometheusAlertRuleState(
      annotations: map['annotations'] == null ? null : (pulumi.Input.decodeList<PrometheusAlertRuleAnnotation>(map['annotations']!, (value) => PrometheusAlertRuleAnnotation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      clusterId: map['clusterId'] == null ? null : (map['clusterId']! as String).input(),
      dispatchRuleId: map['dispatchRuleId'] == null ? null : (map['dispatchRuleId']! as String).input(),
      duration: map['duration'] == null ? null : (map['duration']! as String).input(),
      expression: map['expression'] == null ? null : (map['expression']! as String).input(),
      labels: map['labels'] == null ? null : (pulumi.Input.decodeList<PrometheusAlertRuleLabel>(map['labels']!, (value) => PrometheusAlertRuleLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      notifyType: map['notifyType'] == null ? null : (map['notifyType']! as String).input(),
      prometheusAlertRuleId: map['prometheusAlertRuleId'] == null ? null : (map['prometheusAlertRuleId']! as int).input(),
      prometheusAlertRuleName: map['prometheusAlertRuleName'] == null ? null : (map['prometheusAlertRuleName']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as int).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

