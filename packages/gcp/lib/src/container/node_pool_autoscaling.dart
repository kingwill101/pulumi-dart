// ignore_for_file: unused_element, unnecessary_cast


class NodePoolAutoscaling {
  /// Location policy specifies the algorithm used when
  /// scaling-up the node pool. Location policy is supported only in 1.24.1+ clusters.
  /// * "BALANCED" - Is a best effort policy that aims to balance the sizes of available zones.
  /// * "ANY" - Instructs the cluster autoscaler to prioritize utilization of unused reservations,
  /// and reduce preemption risk for Spot VMs.
  final String? locationPolicy;
  /// Maximum number of nodes per zone in the NodePool.
  /// Must be >= min_node_count. Cannot be used with total limits.
  final int? maxNodeCount;
  /// Minimum number of nodes per zone in the NodePool.
  /// Must be >=0 and <= `max_node_count`. Cannot be used with total limits.
  final int? minNodeCount;
  /// Total maximum number of nodes in the NodePool.
  /// Must be >= total_min_node_count. Cannot be used with per zone limits.
  /// Total size limits are supported only in 1.24.1+ clusters.
  final int? totalMaxNodeCount;
  /// Total minimum number of nodes in the NodePool.
  /// Must be >=0 and <= `total_max_node_count`. Cannot be used with per zone limits.
  /// Total size limits are supported only in 1.24.1+ clusters.
  final int? totalMinNodeCount;

  /// Creates a new [NodePoolAutoscaling].
  /// [locationPolicy] Location policy specifies the algorithm used when
  /// [maxNodeCount] Maximum number of nodes per zone in the NodePool.
  /// [minNodeCount] Minimum number of nodes per zone in the NodePool.
  /// [totalMaxNodeCount] Total maximum number of nodes in the NodePool.
  /// [totalMinNodeCount] Total minimum number of nodes in the NodePool.
  NodePoolAutoscaling({
    this.locationPolicy,
    this.maxNodeCount,
    this.minNodeCount,
    this.totalMaxNodeCount,
    this.totalMinNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationPolicy': ?locationPolicy,
      'maxNodeCount': ?maxNodeCount,
      'minNodeCount': ?minNodeCount,
      'totalMaxNodeCount': ?totalMaxNodeCount,
      'totalMinNodeCount': ?totalMinNodeCount,
    };
  }

  factory NodePoolAutoscaling.fromMap(Map<String, dynamic> map) {
    return NodePoolAutoscaling(
      locationPolicy: map['locationPolicy'] == null ? null : map['locationPolicy'] as String,
      maxNodeCount: map['maxNodeCount'] == null ? null : map['maxNodeCount'] as int,
      minNodeCount: map['minNodeCount'] == null ? null : map['minNodeCount'] as int,
      totalMaxNodeCount: map['totalMaxNodeCount'] == null ? null : map['totalMaxNodeCount'] as int,
      totalMinNodeCount: map['totalMinNodeCount'] == null ? null : map['totalMinNodeCount'] as int,
    );
  }
}

