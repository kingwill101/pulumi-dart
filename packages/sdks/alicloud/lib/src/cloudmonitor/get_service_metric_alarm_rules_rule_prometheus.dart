// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_metric_alarm_rules_rule_prometheus_annotation.dart';

class GetServiceMetricAlarmRulesRulePrometheus {
  /// The annotations of the Prometheus alert rule.
  final pulumi.Input<List<GetServiceMetricAlarmRulesRulePrometheusAnnotation>> annotations;
  /// The alert level.
  final pulumi.Input<String> level;
  /// The PromQL query statement.
  final pulumi.Input<String> promQl;
  /// The number of consecutive triggers.
  final pulumi.Input<int> times;

  /// Creates a new [GetServiceMetricAlarmRulesRulePrometheus].
  /// [annotations] The annotations of the Prometheus alert rule.
  /// [level] The alert level.
  /// [promQl] The PromQL query statement.
  /// [times] The number of consecutive triggers.
  GetServiceMetricAlarmRulesRulePrometheus({
    required this.annotations,
    required this.level,
    required this.promQl,
    required this.times,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': pulumi.Input.mapInputValue<List<GetServiceMetricAlarmRulesRulePrometheusAnnotation>, List<Map<String, dynamic>>>(annotations, (value) => pulumi.Input.encodeList<GetServiceMetricAlarmRulesRulePrometheusAnnotation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'level': level,
      'promQl': promQl,
      'times': times,
    };
  }

  factory GetServiceMetricAlarmRulesRulePrometheus.fromMap(Map<String, dynamic> map) {
    return GetServiceMetricAlarmRulesRulePrometheus(
      annotations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceMetricAlarmRulesRulePrometheusAnnotation>(map['annotations']!, (value) => GetServiceMetricAlarmRulesRulePrometheusAnnotation.fromMap((value as Map).cast<String, dynamic>()))),
      level: pulumi.Input.fromValue(map['level'] as String),
      promQl: pulumi.Input.fromValue(map['promQl'] as String),
      times: pulumi.Input.fromValue(map['times'] as int),
    );
  }
}

