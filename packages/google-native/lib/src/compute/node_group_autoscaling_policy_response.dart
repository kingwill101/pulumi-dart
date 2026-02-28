// ignore_for_file: unused_element, unnecessary_cast


class NodeGroupAutoscalingPolicyResponse {
  /// The maximum number of nodes that the group should have. Must be set if autoscaling is enabled. Maximum value allowed is 100.
  final int maxNodes;
  /// The minimum number of nodes that the group should have.
  final int minNodes;
  /// The autoscaling mode. Set to one of: ON, OFF, or ONLY_SCALE_OUT. For more information, see Autoscaler modes.
  final String mode;

  /// Creates a new [NodeGroupAutoscalingPolicyResponse].
  /// [maxNodes] The maximum number of nodes that the group should have. Must be set if autoscaling is enabled. Maximum value allowed is 100.
  /// [minNodes] The minimum number of nodes that the group should have.
  /// [mode] The autoscaling mode. Set to one of: ON, OFF, or ONLY_SCALE_OUT. For more information, see Autoscaler modes.
  NodeGroupAutoscalingPolicyResponse({
    required this.maxNodes,
    required this.minNodes,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodes': maxNodes,
      'minNodes': minNodes,
      'mode': mode,
    };
  }

  factory NodeGroupAutoscalingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return NodeGroupAutoscalingPolicyResponse(
      maxNodes: map['maxNodes'] as int,
      minNodes: map['minNodes'] as int,
      mode: map['mode'] as String,
    );
  }
}

