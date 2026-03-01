// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_prometheus_alert_rules_rule_annotation.dart';
import 'get_prometheus_alert_rules_rule_label.dart';

class GetPrometheusAlertRulesRule {
  /// The annotations of the alert rule.
  final List<GetPrometheusAlertRulesRuleAnnotation> annotations;
  /// The ID of the cluster.
  final String clusterId;
  /// The ID of the notification policy. This parameter is required when the `notify_type` parameter is set to `DISPATCH_RULE`.
  final String dispatchRuleId;
  /// The duration of the alert.
  final String duration;
  /// The alert rule expression that follows the PromQL syntax..
  final String expression;
  /// The ID of the Prometheus Alert Rule.
  final String id;
  /// The labels of the resource.
  final List<GetPrometheusAlertRulesRuleLabel> labels;
  /// The message of the alert notification.
  final String message;
  /// The method of sending the alert notification. Valid values: `ALERT_MANAGER`, `DISPATCH_RULE`.
  final String notifyType;
  /// The first ID of the resource.
  final String prometheusAlertRuleId;
  /// The name of the resource.
  final String prometheusAlertRuleName;
  /// The status of the resource. Valid values: `0`, `1`.
  final int status;
  /// The type of the alert rule.
  final String type;

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
  GetPrometheusAlertRulesRule({
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
      'annotations': pulumi.Input.encodeList<GetPrometheusAlertRulesRuleAnnotation, Map<String, dynamic>>(annotations, (value) => value.toMap()),
      'clusterId': clusterId,
      'dispatchRuleId': dispatchRuleId,
      'duration': duration,
      'expression': expression,
      'id': id,
      'labels': pulumi.Input.encodeList<GetPrometheusAlertRulesRuleLabel, Map<String, dynamic>>(labels, (value) => value.toMap()),
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
      annotations: pulumi.Input.decodeList<GetPrometheusAlertRulesRuleAnnotation>(map['annotations'], (value) => GetPrometheusAlertRulesRuleAnnotation.fromMap((value as Map).cast<String, dynamic>())),
      clusterId: map['clusterId'] as String,
      dispatchRuleId: map['dispatchRuleId'] as String,
      duration: map['duration'] as String,
      expression: map['expression'] as String,
      id: map['id'] as String,
      labels: pulumi.Input.decodeList<GetPrometheusAlertRulesRuleLabel>(map['labels'], (value) => GetPrometheusAlertRulesRuleLabel.fromMap((value as Map).cast<String, dynamic>())),
      message: map['message'] as String,
      notifyType: map['notifyType'] as String,
      prometheusAlertRuleId: map['prometheusAlertRuleId'] as String,
      prometheusAlertRuleName: map['prometheusAlertRuleName'] as String,
      status: map['status'] as int,
      type: map['type'] as String,
    );
  }
}

