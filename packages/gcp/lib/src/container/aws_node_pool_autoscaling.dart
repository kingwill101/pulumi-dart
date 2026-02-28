// ignore_for_file: unused_element, unnecessary_cast

class AwsNodePoolAutoscaling {
  /// Maximum number of nodes in the NodePool. Must be >= min_node_count.
  final int maxNodeCount;

  /// Minimum number of nodes in the NodePool. Must be >= 1 and <= max_node_count.
  final int minNodeCount;

  /// Creates a new [AwsNodePoolAutoscaling].
  /// [maxNodeCount] Maximum number of nodes in the NodePool. Must be >= min_node_count.
  /// [minNodeCount] Minimum number of nodes in the NodePool. Must be >= 1 and <= max_node_count.
  AwsNodePoolAutoscaling({
    required this.maxNodeCount,
    required this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxNodeCount'] = maxNodeCount;
    map['minNodeCount'] = minNodeCount;
    return map;
  }

  factory AwsNodePoolAutoscaling.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolAutoscaling(
      maxNodeCount: map['maxNodeCount'] as int,
      minNodeCount: map['minNodeCount'] as int,
    );
  }
}
