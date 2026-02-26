// ignore_for_file: unused_element, unnecessary_cast

class NodeGroupAutoscalingPolicyResponse2 {
  /// The maximum number of nodes that the group should have. Must be set if autoscaling is enabled. Maximum value allowed is 100.
  final int maxNodes;

  /// The minimum number of nodes that the group should have.
  final int minNodes;

  /// The autoscaling mode. Set to one of: ON, OFF, or ONLY_SCALE_OUT. For more information, see Autoscaler modes.
  final String mode;

  NodeGroupAutoscalingPolicyResponse2({
    required this.maxNodes,
    required this.minNodes,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxNodes'] = maxNodes;
    map['minNodes'] = minNodes;
    map['mode'] = mode;
    return map;
  }

  factory NodeGroupAutoscalingPolicyResponse2.fromMap(
      Map<String, dynamic> map) {
    return NodeGroupAutoscalingPolicyResponse2(
      maxNodes: map['maxNodes'] as int,
      minNodes: map['minNodes'] as int,
      mode: map['mode'] as String,
    );
  }
}
