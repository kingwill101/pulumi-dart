// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_group_auto_scaling_policy_constraints.dart';
import 'cluster_node_group_auto_scaling_policy_scaling_rule.dart';

class ClusterNodeGroupAutoScalingPolicy {
  /// The constraints of auto scaling policy. See `constraints` below.
  final pulumi.Input<ClusterNodeGroupAutoScalingPolicyConstraints>? constraints;

  /// The scaling rules of auto scaling policy. See `scaling_rules` below.
  final pulumi.Input<List<ClusterNodeGroupAutoScalingPolicyScalingRule>>?
  scalingRules;

  /// Creates a new [ClusterNodeGroupAutoScalingPolicy].
  /// [constraints] The constraints of auto scaling policy. See `constraints` below.
  /// [scalingRules] The scaling rules of auto scaling policy. See `scaling_rules` below.
  ClusterNodeGroupAutoScalingPolicy({this.constraints, this.scalingRules});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraints':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterNodeGroupAutoScalingPolicyConstraints,
            Map<String, dynamic>
          >(constraints, (value) => value.toMap()),
      'scalingRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClusterNodeGroupAutoScalingPolicyScalingRule>,
            List<Map<String, dynamic>>
          >(
            scalingRules,
            (value) =>
                pulumi.Input.encodeList<
                  ClusterNodeGroupAutoScalingPolicyScalingRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ClusterNodeGroupAutoScalingPolicy.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroupAutoScalingPolicy(
      constraints: (() {
        final guardedValue = map['constraints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterNodeGroupAutoScalingPolicyConstraints.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      scalingRules: (() {
        final guardedValue = map['scalingRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ClusterNodeGroupAutoScalingPolicyScalingRule>(
            guardedValue,
            (value) => ClusterNodeGroupAutoScalingPolicyScalingRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
