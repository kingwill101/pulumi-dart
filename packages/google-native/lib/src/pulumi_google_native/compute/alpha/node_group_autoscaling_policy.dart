// ignore_for_file: unused_element, unnecessary_cast

import 'node_group_autoscaling_policy_mode.dart';

class NodeGroupAutoscalingPolicy {
  /// The maximum number of nodes that the group should have. Must be set if autoscaling is enabled. Maximum value allowed is 100.
  final int? maxNodes;

  /// The minimum number of nodes that the group should have.
  final int? minNodes;

  /// The autoscaling mode. Set to one of: ON, OFF, or ONLY_SCALE_OUT. For more information, see Autoscaler modes.
  final NodeGroupAutoscalingPolicyMode? mode;

  NodeGroupAutoscalingPolicy({
    this.maxNodes,
    this.minNodes,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxNodesValue = maxNodes;
    if (maxNodesValue != null) {
      map['maxNodes'] = maxNodesValue;
    }
    final minNodesValue = minNodes;
    if (minNodesValue != null) {
      map['minNodes'] = minNodesValue;
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue.value;
    }
    return map;
  }

  factory NodeGroupAutoscalingPolicy.fromMap(Map<String, dynamic> map) {
    return NodeGroupAutoscalingPolicy(
      maxNodes: map['maxNodes'] == null ? null : map['maxNodes'] as int,
      minNodes: map['minNodes'] == null ? null : map['minNodes'] as int,
      mode: map['mode'] == null
          ? null
          : NodeGroupAutoscalingPolicyMode.fromValue(map['mode'] as String),
    );
  }
}
