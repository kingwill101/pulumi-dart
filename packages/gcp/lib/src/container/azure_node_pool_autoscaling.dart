// ignore_for_file: unused_element, unnecessary_cast


class AzureNodePoolAutoscaling {
  /// Maximum number of nodes in the node pool. Must be >= min_node_count.
  final int maxNodeCount;
  /// Minimum number of nodes in the node pool. Must be >= 1 and <= max_node_count.
  final int minNodeCount;

  /// Creates a new [AzureNodePoolAutoscaling].
  /// [maxNodeCount] Maximum number of nodes in the node pool. Must be >= min_node_count.
  /// [minNodeCount] Minimum number of nodes in the node pool. Must be >= 1 and <= max_node_count.
  AzureNodePoolAutoscaling({
    required this.maxNodeCount,
    required this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodeCount': maxNodeCount,
      'minNodeCount': minNodeCount,
    };
  }

  factory AzureNodePoolAutoscaling.fromMap(Map<String, dynamic> map) {
    return AzureNodePoolAutoscaling(
      maxNodeCount: map['maxNodeCount'] as int,
      minNodeCount: map['minNodeCount'] as int,
    );
  }
}

