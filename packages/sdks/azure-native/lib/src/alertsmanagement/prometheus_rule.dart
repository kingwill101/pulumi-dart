// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prometheus_rule_group_action.dart';
import 'prometheus_rule_resolve_configuration.dart';

/// An Azure Prometheus alerting or recording rule.
class PrometheusRule {
  /// Actions that are performed when the alert rule becomes active, and when an alert condition is resolved.
  final pulumi.Input<List<PrometheusRuleGroupAction>>? actions;
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
  final pulumi.Input<PrometheusRuleResolveConfiguration>? resolveConfiguration;
  /// The severity of the alerts fired by the rule. Must be between 0 and 4.
  final pulumi.Input<int>? severity;

  /// Creates a new [PrometheusRule].
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
  const PrometheusRule({
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
      'actions': ?pulumi.Input.mapOptionalInputValue<List<PrometheusRuleGroupAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<PrometheusRuleGroupAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'alert': ?alert,
      'annotations': ?annotations,
      'enabled': ?enabled,
      'expression': expression,
      'for': ?for_,
      'labels': ?labels,
      'record': ?record,
      'resolveConfiguration': ?pulumi.Input.mapOptionalInputValue<PrometheusRuleResolveConfiguration, Map<String, dynamic>>(resolveConfiguration, (value) => value.toMap()),
      'severity': ?severity,
    };
  }

  factory PrometheusRule.fromMap(Map<String, dynamic> map) {
    return PrometheusRule(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrometheusRuleGroupAction>(guardedValue, (value) => PrometheusRuleGroupAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      alert: (() { final guardedValue = map['alert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      for_: (() { final guardedValue = map['for']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      record: (() { final guardedValue = map['record']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resolveConfiguration: (() { final guardedValue = map['resolveConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrometheusRuleResolveConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

