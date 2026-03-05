// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_group_auto_scaling_policy_scaling_rule_metrics_trigger_condition_tag.dart';

class ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerCondition {
  /// The comparison operator for this scaling rule specific metrics trigger. Invalid values: `EQ`, `NE`, `GT`, `LT`, `GE`, `LE`.
  final pulumi.Input<String> comparisonOperator;
  /// The metric name for this scaling rule specific metrics trigger.
  final pulumi.Input<String> metricName;
  /// The statistics for this scaling rule specific metrics trigger.
  final pulumi.Input<String> statistics;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<List<ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerConditionTag>>? tags;
  /// The threshold for this scaling rule specific metrics trigger.
  final pulumi.Input<double> threshold;

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
      'tags': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerConditionTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerConditionTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'threshold': threshold,
    };
  }

  factory ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerCondition.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerCondition(
      comparisonOperator: pulumi.Input.fromValue(map['comparisonOperator'] as String),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      statistics: pulumi.Input.fromValue(map['statistics'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerConditionTag>(guardedValue, (value) => ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerConditionTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      threshold: pulumi.Input.fromValue(map['threshold'] as double),
    );
  }
}

