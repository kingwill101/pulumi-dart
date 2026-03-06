// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_group_auto_scaling_policy_scaling_rule_metrics_trigger.dart';
import 'cluster_node_group_auto_scaling_policy_scaling_rule_time_trigger.dart';

class ClusterNodeGroupAutoScalingPolicyScalingRule {
  /// The activity type of auto scaling policy. Valid values: `SCALE_OUT` and `SCALE_IN`.
  final pulumi.Input<String> activityType;
  /// The adjustment type of auto scaling policy. Valid values: `CHANGE_IN_CAPACITY` and `EXACT_CAPACITY`.
  final pulumi.Input<String>? adjustmentType;
  /// The adjustment value of auto scaling policy. The value should between 1 and 5000.
  final pulumi.Input<int> adjustmentValue;
  /// The trigger metrics of scaling rules for emr node group auto scaling policy. See `metrics_trigger` below.
  final pulumi.Input<ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTrigger>? metricsTrigger;
  /// The minimum adjustment value of auto scaling policy.
  final pulumi.Input<int>? minAdjustmentValue;
  /// The rule name of auto scaling policy.
  final pulumi.Input<String> ruleName;
  /// The trigger time of scaling rules for emr node group auto scaling policy. See `time_trigger` below.
  final pulumi.Input<ClusterNodeGroupAutoScalingPolicyScalingRuleTimeTrigger>? timeTrigger;
  /// The trigger type of auto scaling policy. Valid values: `TIME_TRIGGER` and `METRICS_TRIGGER`.
  final pulumi.Input<String> triggerType;

  /// Creates a new [ClusterNodeGroupAutoScalingPolicyScalingRule].
  /// [activityType] The activity type of auto scaling policy. Valid values: `SCALE_OUT` and `SCALE_IN`.
  /// [adjustmentType] The adjustment type of auto scaling policy. Valid values: `CHANGE_IN_CAPACITY` and `EXACT_CAPACITY`.
  /// [adjustmentValue] The adjustment value of auto scaling policy. The value should between 1 and 5000.
  /// [metricsTrigger] The trigger metrics of scaling rules for emr node group auto scaling policy. See `metrics_trigger` below.
  /// [minAdjustmentValue] The minimum adjustment value of auto scaling policy.
  /// [ruleName] The rule name of auto scaling policy.
  /// [timeTrigger] The trigger time of scaling rules for emr node group auto scaling policy. See `time_trigger` below.
  /// [triggerType] The trigger type of auto scaling policy. Valid values: `TIME_TRIGGER` and `METRICS_TRIGGER`.
  const ClusterNodeGroupAutoScalingPolicyScalingRule({
    required this.activityType,
    this.adjustmentType,
    required this.adjustmentValue,
    this.metricsTrigger,
    this.minAdjustmentValue,
    required this.ruleName,
    this.timeTrigger,
    required this.triggerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activityType': activityType,
      'adjustmentType': ?adjustmentType,
      'adjustmentValue': adjustmentValue,
      'metricsTrigger': ?pulumi.Input.mapOptionalInputValue<ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTrigger, Map<String, dynamic>>(metricsTrigger, (value) => value.toMap()),
      'minAdjustmentValue': ?minAdjustmentValue,
      'ruleName': ruleName,
      'timeTrigger': ?pulumi.Input.mapOptionalInputValue<ClusterNodeGroupAutoScalingPolicyScalingRuleTimeTrigger, Map<String, dynamic>>(timeTrigger, (value) => value.toMap()),
      'triggerType': triggerType,
    };
  }

  factory ClusterNodeGroupAutoScalingPolicyScalingRule.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroupAutoScalingPolicyScalingRule(
      activityType: pulumi.Input.fromValue(map['activityType'] as String),
      adjustmentType: (() { final guardedValue = map['adjustmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      adjustmentValue: pulumi.Input.fromValue(map['adjustmentValue'] as int),
      metricsTrigger: (() { final guardedValue = map['metricsTrigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTrigger.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      minAdjustmentValue: (() { final guardedValue = map['minAdjustmentValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
      timeTrigger: (() { final guardedValue = map['timeTrigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodeGroupAutoScalingPolicyScalingRuleTimeTrigger.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      triggerType: pulumi.Input.fromValue(map['triggerType'] as String),
    );
  }
}

