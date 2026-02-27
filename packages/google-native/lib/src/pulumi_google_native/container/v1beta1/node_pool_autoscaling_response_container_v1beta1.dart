// ignore_for_file: unused_element, unnecessary_cast

/// NodePoolAutoscaling contains information required by cluster autoscaler to adjust the size of the node pool to the current cluster usage.
class NodePoolAutoscalingResponseContainerV1beta1 {
  /// Can this node pool be deleted automatically.
  final bool autoprovisioned;

  /// Is autoscaling enabled for this node pool.
  final bool enabled;

  /// Location policy used when scaling up a nodepool.
  final String locationPolicy;

  /// Maximum number of nodes for one location in the NodePool. Must be >= min_node_count. There has to be enough quota to scale up the cluster.
  final int maxNodeCount;

  /// Minimum number of nodes for one location in the NodePool. Must be >= 1 and <= max_node_count.
  final int minNodeCount;

  /// Maximum number of nodes in the node pool. Must be greater than total_min_node_count. There has to be enough quota to scale up the cluster. The total_*_node_count fields are mutually exclusive with the *_node_count fields.
  final int totalMaxNodeCount;

  /// Minimum number of nodes in the node pool. Must be greater than 1 less than total_max_node_count. The total_*_node_count fields are mutually exclusive with the *_node_count fields.
  final int totalMinNodeCount;

  NodePoolAutoscalingResponseContainerV1beta1({
    required this.autoprovisioned,
    required this.enabled,
    required this.locationPolicy,
    required this.maxNodeCount,
    required this.minNodeCount,
    required this.totalMaxNodeCount,
    required this.totalMinNodeCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoprovisioned'] = autoprovisioned;
    map['enabled'] = enabled;
    map['locationPolicy'] = locationPolicy;
    map['maxNodeCount'] = maxNodeCount;
    map['minNodeCount'] = minNodeCount;
    map['totalMaxNodeCount'] = totalMaxNodeCount;
    map['totalMinNodeCount'] = totalMinNodeCount;
    return map;
  }

  factory NodePoolAutoscalingResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return NodePoolAutoscalingResponseContainerV1beta1(
      autoprovisioned: map['autoprovisioned'] as bool,
      enabled: map['enabled'] as bool,
      locationPolicy: map['locationPolicy'] as String,
      maxNodeCount: map['maxNodeCount'] as int,
      minNodeCount: map['minNodeCount'] as int,
      totalMaxNodeCount: map['totalMaxNodeCount'] as int,
      totalMinNodeCount: map['totalMinNodeCount'] as int,
    );
  }
}
