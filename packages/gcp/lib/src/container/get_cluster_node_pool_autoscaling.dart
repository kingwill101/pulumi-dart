// ignore_for_file: unused_element, unnecessary_cast


class GetClusterNodePoolAutoscaling {
  /// Location policy specifies the algorithm used when scaling-up the node pool. "BALANCED" - Is a best effort policy that aims to balance the sizes of available zones. "ANY" - Instructs the cluster autoscaler to prioritize utilization of unused reservations, and reduces preemption risk for Spot VMs.
  final String locationPolicy;
  /// Maximum number of nodes per zone in the node pool. Must be >= min_node_count. Cannot be used with total limits.
  final int maxNodeCount;
  /// Minimum number of nodes per zone in the node pool. Must be >=0 and <= max_node_count. Cannot be used with total limits.
  final int minNodeCount;
  /// Maximum number of all nodes in the node pool. Must be >= total_min_node_count. Cannot be used with per zone limits.
  final int totalMaxNodeCount;
  /// Minimum number of all nodes in the node pool. Must be >=0 and <= total_max_node_count. Cannot be used with per zone limits.
  final int totalMinNodeCount;

  /// Creates a new [GetClusterNodePoolAutoscaling].
  /// [locationPolicy] Location policy specifies the algorithm used when scaling-up the node pool. "BALANCED" - Is a best effort policy that aims to balance the sizes of available zones. "ANY" - Instructs the cluster autoscaler to prioritize utilization of unused reservations, and reduces preemption risk for Spot VMs.
  /// [maxNodeCount] Maximum number of nodes per zone in the node pool. Must be >= min_node_count. Cannot be used with total limits.
  /// [minNodeCount] Minimum number of nodes per zone in the node pool. Must be >=0 and <= max_node_count. Cannot be used with total limits.
  /// [totalMaxNodeCount] Maximum number of all nodes in the node pool. Must be >= total_min_node_count. Cannot be used with per zone limits.
  /// [totalMinNodeCount] Minimum number of all nodes in the node pool. Must be >=0 and <= total_max_node_count. Cannot be used with per zone limits.
  GetClusterNodePoolAutoscaling({
    required this.locationPolicy,
    required this.maxNodeCount,
    required this.minNodeCount,
    required this.totalMaxNodeCount,
    required this.totalMinNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationPolicy': locationPolicy,
      'maxNodeCount': maxNodeCount,
      'minNodeCount': minNodeCount,
      'totalMaxNodeCount': totalMaxNodeCount,
      'totalMinNodeCount': totalMinNodeCount,
    };
  }

  factory GetClusterNodePoolAutoscaling.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolAutoscaling(
      locationPolicy: map['locationPolicy'] as String,
      maxNodeCount: map['maxNodeCount'] as int,
      minNodeCount: map['minNodeCount'] as int,
      totalMaxNodeCount: map['totalMaxNodeCount'] as int,
      totalMinNodeCount: map['totalMinNodeCount'] as int,
    );
  }
}

