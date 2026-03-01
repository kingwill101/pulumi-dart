// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_group_auto_scaling_policy_scaling_rule_metrics_trigger_condition_tag.dart';

class ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerCondition {
  /// The comparison operator for this scaling rule specific metrics trigger. Invalid values: `EQ`, `NE`, `GT`, `LT`, `GE`, `LE`.
  final String comparisonOperator;
  /// The metric name for this scaling rule specific metrics trigger.
  final String metricName;
  /// The statistics for this scaling rule specific metrics trigger.
  final String statistics;
  /// A mapping of tags to assign to the resource.
  final List<ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerConditionTag>? tags;
  /// The threshold for this scaling rule specific metrics trigger.
  final double threshold;

  /// Creates a new [ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerCondition].
  /// [comparisonOperator] The comparison operator for this scaling rule specific metrics trigger. Invalid values: `EQ`, `NE`, `GT`, `LT`, `GE`, `LE`.
  /// [metricName] The metric name for this scaling rule specific metrics trigger.
  /// [statistics] The statistics for this scaling rule specific metrics trigger.
  /// [tags] A mapping of tags to assign to the resource.
  /// [threshold] The threshold for this scaling rule specific metrics trigger.
  ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerCondition({
    required this.comparisonOperator,
    required this.metricName,
    required this.statistics,
    this.tags,
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparisonOperator': comparisonOperator,
      'metricName': metricName,
      'statistics': statistics,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerConditionTag, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'threshold': threshold,
    };
  }

  factory ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerCondition.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerCondition(
      comparisonOperator: map['comparisonOperator'] as String,
      metricName: map['metricName'] as String,
      statistics: map['statistics'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerConditionTag>(map['tags'], (value) => ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerConditionTag.fromMap((value as Map).cast<String, dynamic>())),
      threshold: map['threshold'] as double,
    );
  }
}

