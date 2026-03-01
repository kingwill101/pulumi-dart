// ignore_for_file: unused_element, unnecessary_cast

class NodeGroupAutoscalingPolicy {
  /// Maximum size of the node group. Set to a value less than or equal
  /// to 100 and greater than or equal to min-nodes.
  final int? maxNodes;

  /// Minimum size of the node group. Must be less
  /// than or equal to max-nodes. The default value is 0.
  final int? minNodes;

  /// The autoscaling mode. Set to one of the following:
  /// - OFF: Disables the autoscaler.
  /// - ON: Enables scaling in and scaling out.
  /// - ONLY_SCALE_OUT: Enables only scaling out.
  /// You must use this mode if your node groups are configured to
  /// restart their hosted VMs on minimal servers.
  /// Possible values are: `OFF`, `ON`, `ONLY_SCALE_OUT`.
  final String? mode;

  /// Creates a new [NodeGroupAutoscalingPolicy].
  /// [maxNodes] Maximum size of the node group. Set to a value less than or equal
  /// [minNodes] Minimum size of the node group. Must be less
  /// [mode] The autoscaling mode. Set to one of the following:
  NodeGroupAutoscalingPolicy({this.maxNodes, this.minNodes, this.mode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodes': ?maxNodes,
      'minNodes': ?minNodes,
      'mode': ?mode,
    };
  }

  factory NodeGroupAutoscalingPolicy.fromMap(Map<String, dynamic> map) {
    return NodeGroupAutoscalingPolicy(
      maxNodes: map['maxNodes'] == null ? null : map['maxNodes'] as int,
      minNodes: map['minNodes'] == null ? null : map['minNodes'] as int,
      mode: map['mode'] == null ? null : map['mode'] as String,
    );
  }
}
