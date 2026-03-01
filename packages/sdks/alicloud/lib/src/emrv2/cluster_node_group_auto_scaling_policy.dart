// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_group_auto_scaling_policy_constraints.dart';
import 'cluster_node_group_auto_scaling_policy_scaling_rule.dart';

class ClusterNodeGroupAutoScalingPolicy {
  /// The constraints of auto scaling policy. See `constraints` below.
  final ClusterNodeGroupAutoScalingPolicyConstraints? constraints;
  /// The scaling rules of auto scaling policy. See `scaling_rules` below.
  final List<ClusterNodeGroupAutoScalingPolicyScalingRule>? scalingRules;

  /// Creates a new [ClusterNodeGroupAutoScalingPolicy].
  /// [constraints] The constraints of auto scaling policy. See `constraints` below.
  /// [scalingRules] The scaling rules of auto scaling policy. See `scaling_rules` below.
  ClusterNodeGroupAutoScalingPolicy({
    this.constraints,
    this.scalingRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraints': ?constraints == null ? null : constraints!.toMap(),
      'scalingRules': ?scalingRules == null ? null : pulumi.Input.encodeList<ClusterNodeGroupAutoScalingPolicyScalingRule, Map<String, dynamic>>(scalingRules!, (value) => value.toMap()),
    };
  }

  factory ClusterNodeGroupAutoScalingPolicy.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroupAutoScalingPolicy(
      constraints: map['constraints'] == null ? null : ClusterNodeGroupAutoScalingPolicyConstraints.fromMap((map['constraints'] as Map).cast<String, dynamic>()),
      scalingRules: map['scalingRules'] == null ? null : pulumi.Input.decodeList<ClusterNodeGroupAutoScalingPolicyScalingRule>(map['scalingRules'], (value) => ClusterNodeGroupAutoScalingPolicyScalingRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

