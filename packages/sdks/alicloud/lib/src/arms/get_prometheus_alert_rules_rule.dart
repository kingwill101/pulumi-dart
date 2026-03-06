// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_prometheus_alert_rules_rule_annotation.dart';
import 'get_prometheus_alert_rules_rule_label.dart';

class GetPrometheusAlertRulesRule {
  /// The annotations of the alert rule.
  final pulumi.Input<List<GetPrometheusAlertRulesRuleAnnotation>> annotations;
  /// The ID of the cluster.
  final pulumi.Input<String> clusterId;
  /// The ID of the notification policy. This parameter is required when the `notify_type` parameter is set to `DISPATCH_RULE`.
  final pulumi.Input<String> dispatchRuleId;
  /// The duration of the alert.
  final pulumi.Input<String> duration;
  /// The alert rule expression that follows the PromQL syntax..
  final pulumi.Input<String> expression;
  /// The ID of the Prometheus Alert Rule.
  final pulumi.Input<String> id;
  /// The labels of the resource.
  final pulumi.Input<List<GetPrometheusAlertRulesRuleLabel>> labels;
  /// The message of the alert notification.
  final pulumi.Input<String> message;
  /// The method of sending the alert notification. Valid values: `ALERT_MANAGER`, `DISPATCH_RULE`.
  final pulumi.Input<String> notifyType;
  /// The first ID of the resource.
  final pulumi.Input<String> prometheusAlertRuleId;
  /// The name of the resource.
  final pulumi.Input<String> prometheusAlertRuleName;
  /// The status of the resource. Valid values: `0`, `1`.
  final pulumi.Input<int> status;
  /// The type of the alert rule.
  final pulumi.Input<String> type;

  /// Creates a new [GetPrometheusAlertRulesRule].
  /// [annotations] The annotations of the alert rule.
  /// [clusterId] The ID of the cluster.
  /// [dispatchRuleId] The ID of the notification policy. This parameter is required when the `notify_type` parameter is set to `DISPATCH_RULE`.
  /// [duration] The duration of the alert.
  /// [expression] The alert rule expression that follows the PromQL syntax..
  /// [id] The ID of the Prometheus Alert Rule.
  /// [labels] The labels of the resource.
  /// [message] The message of the alert notification.
  /// [notifyType] The method of sending the alert notification. Valid values: `ALERT_MANAGER`, `DISPATCH_RULE`.
  /// [prometheusAlertRuleId] The first ID of the resource.
  /// [prometheusAlertRuleName] The name of the resource.
  /// [status] The status of the resource. Valid values: `0`, `1`.
  /// [type] The type of the alert rule.
  const GetPrometheusAlertRulesRule({
    required this.annotations,
    required this.clusterId,
    required this.dispatchRuleId,
    required this.duration,
    required this.expression,
    required this.id,
    required this.labels,
    required this.message,
    required this.notifyType,
    required this.prometheusAlertRuleId,
    required this.prometheusAlertRuleName,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': pulumi.Input.mapInputValue<List<GetPrometheusAlertRulesRuleAnnotation>, List<Map<String, dynamic>>>(annotations, (value) => pulumi.Input.encodeList<GetPrometheusAlertRulesRuleAnnotation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterId': clusterId,
      'dispatchRuleId': dispatchRuleId,
      'duration': duration,
      'expression': expression,
      'id': id,
      'labels': pulumi.Input.mapInputValue<List<GetPrometheusAlertRulesRuleLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<GetPrometheusAlertRulesRuleLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'message': message,
      'notifyType': notifyType,
      'prometheusAlertRuleId': prometheusAlertRuleId,
      'prometheusAlertRuleName': prometheusAlertRuleName,
      'status': status,
      'type': type,
    };
  }

  factory GetPrometheusAlertRulesRule.fromMap(Map<String, dynamic> map) {
    return GetPrometheusAlertRulesRule(
      annotations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPrometheusAlertRulesRuleAnnotation>(map['annotations']!, (value) => GetPrometheusAlertRulesRuleAnnotation.fromMap((value as Map).cast<String, dynamic>()))),
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      dispatchRuleId: pulumi.Input.fromValue(map['dispatchRuleId'] as String),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      labels: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPrometheusAlertRulesRuleLabel>(map['labels']!, (value) => GetPrometheusAlertRulesRuleLabel.fromMap((value as Map).cast<String, dynamic>()))),
      message: pulumi.Input.fromValue(map['message'] as String),
      notifyType: pulumi.Input.fromValue(map['notifyType'] as String),
      prometheusAlertRuleId: pulumi.Input.fromValue(map['prometheusAlertRuleId'] as String),
      prometheusAlertRuleName: pulumi.Input.fromValue(map['prometheusAlertRuleName'] as String),
      status: pulumi.Input.fromValue(map['status'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

