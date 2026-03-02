// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prometheus_rule_group_action_response.dart';
import 'prometheus_rule_resolve_configuration_response.dart';

/// An Azure Prometheus alerting or recording rule.
class PrometheusRuleResponse {
  /// Actions that are performed when the alert rule becomes active, and when an alert condition is resolved.
  final pulumi.Input<List<PrometheusRuleGroupActionResponse>>? actions;
  /// Alert rule name.
  final pulumi.Input<String>? alert;
  /// The annotations clause specifies a set of informational labels that can be used to store longer additional information such as alert descriptions or runbook links. The annotation values can be templated.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Enable/disable rule.
  final pulumi.Input<bool>? enabled;
  /// The PromQL expression to evaluate. https://prometheus.io/docs/prometheus/latest/querying/basics/. Evaluated periodically as given by 'interval', and the result recorded as a new set of time series with the metric name as given by 'record'.
  final pulumi.Input<String> expression;
  /// The amount of time alert must be active before firing.
  final pulumi.Input<String>? for_;
  /// Labels to add or overwrite before storing the result.
  final pulumi.Input<Map<String, String>>? labels;
  /// Recorded metrics name.
  final pulumi.Input<String>? record;
  /// Defines the configuration for resolving fired alerts. Only relevant for alerts.
  final pulumi.Input<PrometheusRuleResolveConfigurationResponse>? resolveConfiguration;
  /// The severity of the alerts fired by the rule. Must be between 0 and 4.
  final pulumi.Input<int>? severity;

  /// Creates a new [PrometheusRuleResponse].
  /// [actions] Actions that are performed when the alert rule becomes active, and when an alert condition is resolved.
  /// [alert] Alert rule name.
  /// [annotations] The annotations clause specifies a set of informational labels that can be used to store longer additional information such as alert descriptions or runbook links. The annotation values can be templated.
  /// [enabled] Enable/disable rule.
  /// [expression] The PromQL expression to evaluate. https://prometheus.io/docs/prometheus/latest/querying/basics/. Evaluated periodically as given by 'interval', and the result recorded as a new set of time series with the metric name as given by 'record'.
  /// [for_] The amount of time alert must be active before firing.
  /// [labels] Labels to add or overwrite before storing the result.
  /// [record] Recorded metrics name.
  /// [resolveConfiguration] Defines the configuration for resolving fired alerts. Only relevant for alerts.
  /// [severity] The severity of the alerts fired by the rule. Must be between 0 and 4.
  PrometheusRuleResponse({
    this.actions,
    this.alert,
    this.annotations,
    this.enabled,
    required this.expression,
    this.for_,
    this.labels,
    this.record,
    this.resolveConfiguration,
    this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<PrometheusRuleGroupActionResponse>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<PrometheusRuleGroupActionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'alert': ?alert,
      'annotations': ?annotations,
      'enabled': ?enabled,
      'expression': expression,
      'for': ?for_,
      'labels': ?labels,
      'record': ?record,
      'resolveConfiguration': ?pulumi.Input.mapOptionalInputValue<PrometheusRuleResolveConfigurationResponse, Map<String, dynamic>>(resolveConfiguration, (value) => value.toMap()),
      'severity': ?severity,
    };
  }

  factory PrometheusRuleResponse.fromMap(Map<String, dynamic> map) {
    return PrometheusRuleResponse(
      actions: map['actions'] == null ? null : (pulumi.Input.decodeList<PrometheusRuleGroupActionResponse>(map['actions'], (value) => PrometheusRuleGroupActionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      alert: map['alert'] == null ? null : (map['alert'] as String).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations'] as Map).cast<String, String>()).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      expression: (map['expression'] as String).input(),
      for_: map['for'] == null ? null : (map['for'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      record: map['record'] == null ? null : (map['record'] as String).input(),
      resolveConfiguration: map['resolveConfiguration'] == null ? null : (PrometheusRuleResolveConfigurationResponse.fromMap((map['resolveConfiguration'] as Map).cast<String, dynamic>())).input(),
      severity: map['severity'] == null ? null : (map['severity'] as int).input(),
    );
  }
}

