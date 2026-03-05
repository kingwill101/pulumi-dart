// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_scaling_rule_scaling_rule_metric_metric.dart';
import 'application_scaling_rule_scaling_rule_metric_scale_down_rules.dart';
import 'application_scaling_rule_scaling_rule_metric_scale_up_rules.dart';

class ApplicationScalingRuleScalingRuleMetric {
  /// Maximum number of instances applied.
  final pulumi.Input<int>? maxReplicas;
  /// Indicator rule configuration. See `metrics` below.
  final pulumi.Input<List<ApplicationScalingRuleScalingRuleMetricMetric>>? metrics;
  /// Minimum number of instances applied.
  final pulumi.Input<int>? minReplicas;
  /// Apply shrink rules. See `scale_down_rules` below.
  final pulumi.Input<ApplicationScalingRuleScalingRuleMetricScaleDownRules>? scaleDownRules;
  /// Apply expansion rules. See `scale_up_rules` below.
  final pulumi.Input<ApplicationScalingRuleScalingRuleMetricScaleUpRules>? scaleUpRules;

  /// Creates a new [ApplicationScalingRuleScalingRuleMetric].
  /// [maxReplicas] Maximum number of instances applied.
  /// [metrics] Indicator rule configuration. See `metrics` below.
  /// [minReplicas] Minimum number of instances applied.
  /// [scaleDownRules] Apply shrink rules. See `scale_down_rules` below.
  /// [scaleUpRules] Apply expansion rules. See `scale_up_rules` below.
  ApplicationScalingRuleScalingRuleMetric({
    this.maxReplicas,
    this.metrics,
    this.minReplicas,
    this.scaleDownRules,
    this.scaleUpRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReplicas': ?maxReplicas,
      'metrics': ?pulumi.Input.mapOptionalInputValue<List<ApplicationScalingRuleScalingRuleMetricMetric>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<ApplicationScalingRuleScalingRuleMetricMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'minReplicas': ?minReplicas,
      'scaleDownRules': ?pulumi.Input.mapOptionalInputValue<ApplicationScalingRuleScalingRuleMetricScaleDownRules, Map<String, dynamic>>(scaleDownRules, (value) => value.toMap()),
      'scaleUpRules': ?pulumi.Input.mapOptionalInputValue<ApplicationScalingRuleScalingRuleMetricScaleUpRules, Map<String, dynamic>>(scaleUpRules, (value) => value.toMap()),
    };
  }

  factory ApplicationScalingRuleScalingRuleMetric.fromMap(Map<String, dynamic> map) {
    return ApplicationScalingRuleScalingRuleMetric(
      maxReplicas: (() { final guardedValue = map['maxReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationScalingRuleScalingRuleMetricMetric>(guardedValue, (value) => ApplicationScalingRuleScalingRuleMetricMetric.fromMap((value as Map).cast<String, dynamic>()))); })(),
      minReplicas: (() { final guardedValue = map['minReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      scaleDownRules: (() { final guardedValue = map['scaleDownRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationScalingRuleScalingRuleMetricScaleDownRules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scaleUpRules: (() { final guardedValue = map['scaleUpRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationScalingRuleScalingRuleMetricScaleUpRules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

