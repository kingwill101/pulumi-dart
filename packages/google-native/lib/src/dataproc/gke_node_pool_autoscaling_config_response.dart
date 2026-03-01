// ignore_for_file: unused_element, unnecessary_cast

/// GkeNodePoolAutoscaling contains information the cluster autoscaler needs to adjust the size of the node pool to the current cluster usage.
class GkeNodePoolAutoscalingConfigResponse {
  /// The maximum number of nodes in the node pool. Must be >= min_node_count, and must be > 0. Note: Quota must be sufficient to scale up the cluster.
  final int maxNodeCount;

  /// The minimum number of nodes in the node pool. Must be >= 0 and <= max_node_count.
  final int minNodeCount;

  /// Creates a new [GkeNodePoolAutoscalingConfigResponse].
  /// [maxNodeCount] The maximum number of nodes in the node pool. Must be >= min_node_count, and must be > 0. Note: Quota must be sufficient to scale up the cluster.
  /// [minNodeCount] The minimum number of nodes in the node pool. Must be >= 0 and <= max_node_count.
  GkeNodePoolAutoscalingConfigResponse({
    required this.maxNodeCount,
    required this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodeCount': maxNodeCount,
      'minNodeCount': minNodeCount,
    };
  }

  factory GkeNodePoolAutoscalingConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GkeNodePoolAutoscalingConfigResponse(
      maxNodeCount: map['maxNodeCount'] as int,
      minNodeCount: map['minNodeCount'] as int,
    );
  }
}
