// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_scaling_rule_scaling_rule_metric_metric.dart';
import 'application_scaling_rule_scaling_rule_metric_scale_down_rules.dart';
import 'application_scaling_rule_scaling_rule_metric_scale_up_rules.dart';

class ApplicationScalingRuleScalingRuleMetric {
  /// Maximum number of instances applied.
  final int? maxReplicas;
  /// Indicator rule configuration. See `metrics` below.
  final List<ApplicationScalingRuleScalingRuleMetricMetric>? metrics;
  /// Minimum number of instances applied.
  final int? minReplicas;
  /// Apply shrink rules. See `scale_down_rules` below.
  final ApplicationScalingRuleScalingRuleMetricScaleDownRules? scaleDownRules;
  /// Apply expansion rules. See `scale_up_rules` below.
  final ApplicationScalingRuleScalingRuleMetricScaleUpRules? scaleUpRules;

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
      'metrics': ?metrics == null ? null : pulumi.Input.encodeList<ApplicationScalingRuleScalingRuleMetricMetric, Map<String, dynamic>>(metrics!, (value) => value.toMap()),
      'minReplicas': ?minReplicas,
      'scaleDownRules': ?scaleDownRules == null ? null : scaleDownRules!.toMap(),
      'scaleUpRules': ?scaleUpRules == null ? null : scaleUpRules!.toMap(),
    };
  }

  factory ApplicationScalingRuleScalingRuleMetric.fromMap(Map<String, dynamic> map) {
    return ApplicationScalingRuleScalingRuleMetric(
      maxReplicas: map['maxReplicas'] == null ? null : map['maxReplicas'] as int,
      metrics: map['metrics'] == null ? null : pulumi.Input.decodeList<ApplicationScalingRuleScalingRuleMetricMetric>(map['metrics'], (value) => ApplicationScalingRuleScalingRuleMetricMetric.fromMap((value as Map).cast<String, dynamic>())),
      minReplicas: map['minReplicas'] == null ? null : map['minReplicas'] as int,
      scaleDownRules: map['scaleDownRules'] == null ? null : ApplicationScalingRuleScalingRuleMetricScaleDownRules.fromMap((map['scaleDownRules'] as Map).cast<String, dynamic>()),
      scaleUpRules: map['scaleUpRules'] == null ? null : ApplicationScalingRuleScalingRuleMetricScaleUpRules.fromMap((map['scaleUpRules'] as Map).cast<String, dynamic>()),
    );
  }
}

