// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_target_tracking_scaling_policy_configuration_customized_metric_specification_metric_metric_stat.dart';

class PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric {
  final pulumi.Input<String?>? expression;
  final pulumi.Input<String> id;
  final pulumi.Input<String?>? label;
  final pulumi.Input<PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStat?>? metricStat;
  final pulumi.Input<bool?>? returnData;

  /// Creates a new [PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric].
  /// [expression] Optional.
  /// [id] Required.
  /// [label] Optional.
  /// [metricStat] Optional.
  /// [returnData] Optional.
  const PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric({
    this.expression,
    required this.id,
    this.label,
    this.metricStat,
    this.returnData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': ?expression,
      'id': id,
      'label': ?label,
      'metricStat': ?pulumi.Input.mapOptionalInputValue<PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStat, Map<String, dynamic>>(metricStat, (value) => value.toMap()),
      'returnData': ?returnData,
    };
  }

  factory PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric.fromMap(Map<String, dynamic> map) {
    return PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetric(
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricStat: (() { final guardedValue = map['metricStat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      returnData: (() { final guardedValue = map['returnData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
