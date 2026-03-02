// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_group_auto_scaling_policy_scaling_rule_metrics_trigger_condition.dart';
import 'cluster_node_group_auto_scaling_policy_scaling_rule_metrics_trigger_time_constraint.dart';

class ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTrigger {
  /// The condition logic operator for this scaling rule specific metrics trigger. Valid values: `And` and `Or`.
  final pulumi.Input<String>? conditionLogicOperator;
  /// The conditions for this scaling rule specific metrics trigger. See `conditions` below.
  final pulumi.Input<List<ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerCondition>>? conditions;
  /// The time of cool down interval for this scaling rule specific metrics trigger.
  final pulumi.Input<int>? coolDownInterval;
  /// The evaluation count for this scaling rule specific metrics trigger.
  final pulumi.Input<int> evaluationCount;
  /// The time constraints for this scaling rule specific metrics trigger. See `time_constraints` below.
  final pulumi.Input<List<ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerTimeConstraint>>? timeConstraints;
  /// The time window for this scaling rule specific metrics trigger.
  final pulumi.Input<int> timeWindow;

  /// Creates a new [ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTrigger].
  /// [conditionLogicOperator] The condition logic operator for this scaling rule specific metrics trigger. Valid values: `And` and `Or`.
  /// [conditions] The conditions for this scaling rule specific metrics trigger. See `conditions` below.
  /// [coolDownInterval] The time of cool down interval for this scaling rule specific metrics trigger.
  /// [evaluationCount] The evaluation count for this scaling rule specific metrics trigger.
  /// [timeConstraints] The time constraints for this scaling rule specific metrics trigger. See `time_constraints` below.
  /// [timeWindow] The time window for this scaling rule specific metrics trigger.
  ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTrigger({
    this.conditionLogicOperator,
    this.conditions,
    this.coolDownInterval,
    required this.evaluationCount,
    this.timeConstraints,
    required this.timeWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionLogicOperator': ?conditionLogicOperator,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'coolDownInterval': ?coolDownInterval,
      'evaluationCount': evaluationCount,
      'timeConstraints': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerTimeConstraint>, List<Map<String, dynamic>>>(timeConstraints, (value) => pulumi.Input.encodeList<ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerTimeConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeWindow': timeWindow,
    };
  }

  factory ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTrigger.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTrigger(
      conditionLogicOperator: map['conditionLogicOperator'] == null ? null : (map['conditionLogicOperator']! as String).input(),
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerCondition>(map['conditions']!, (value) => ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      coolDownInterval: map['coolDownInterval'] == null ? null : (map['coolDownInterval']! as int).input(),
      evaluationCount: (map['evaluationCount'] as int).input(),
      timeConstraints: map['timeConstraints'] == null ? null : (pulumi.Input.decodeList<ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerTimeConstraint>(map['timeConstraints']!, (value) => ClusterNodeGroupAutoScalingPolicyScalingRuleMetricsTriggerTimeConstraint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timeWindow: (map['timeWindow'] as int).input(),
    );
  }
}

