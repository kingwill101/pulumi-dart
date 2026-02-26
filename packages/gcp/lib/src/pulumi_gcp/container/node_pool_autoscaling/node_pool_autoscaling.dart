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
  /// Must be >=0 and <= <span pulumi-lang-nodejs="`maxNodeCount`" pulumi-lang-dotnet="`MaxNodeCount`" pulumi-lang-go="`maxNodeCount`" pulumi-lang-python="`max_node_count`" pulumi-lang-yaml="`maxNodeCount`" pulumi-lang-java="`maxNodeCount`">`max_node_count`</span>. Cannot be used with total limits.
  final int? minNodeCount;

  /// Total maximum number of nodes in the NodePool.
  /// Must be >= total_min_node_count. Cannot be used with per zone limits.
  /// Total size limits are supported only in 1.24.1+ clusters.
  final int? totalMaxNodeCount;

  /// Total minimum number of nodes in the NodePool.
  /// Must be >=0 and <= <span pulumi-lang-nodejs="`totalMaxNodeCount`" pulumi-lang-dotnet="`TotalMaxNodeCount`" pulumi-lang-go="`totalMaxNodeCount`" pulumi-lang-python="`total_max_node_count`" pulumi-lang-yaml="`totalMaxNodeCount`" pulumi-lang-java="`totalMaxNodeCount`">`total_max_node_count`</span>. Cannot be used with per zone limits.
  /// Total size limits are supported only in 1.24.1+ clusters.
  final int? totalMinNodeCount;

  NodePoolAutoscaling({
    this.locationPolicy,
    this.maxNodeCount,
    this.minNodeCount,
    this.totalMaxNodeCount,
    this.totalMinNodeCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationPolicyValue = locationPolicy;
    if (locationPolicyValue != null) {
      map['locationPolicy'] = locationPolicyValue;
    }
    final maxNodeCountValue = maxNodeCount;
    if (maxNodeCountValue != null) {
      map['maxNodeCount'] = maxNodeCountValue;
    }
    final minNodeCountValue = minNodeCount;
    if (minNodeCountValue != null) {
      map['minNodeCount'] = minNodeCountValue;
    }
    final totalMaxNodeCountValue = totalMaxNodeCount;
    if (totalMaxNodeCountValue != null) {
      map['totalMaxNodeCount'] = totalMaxNodeCountValue;
    }
    final totalMinNodeCountValue = totalMinNodeCount;
    if (totalMinNodeCountValue != null) {
      map['totalMinNodeCount'] = totalMinNodeCountValue;
    }
    return map;
  }

  factory NodePoolAutoscaling.fromMap(Map<String, dynamic> map) {
    return NodePoolAutoscaling(
      locationPolicy: map['locationPolicy'] == null
          ? null
          : map['locationPolicy'] as String,
      maxNodeCount:
          map['maxNodeCount'] == null ? null : map['maxNodeCount'] as int,
      minNodeCount:
          map['minNodeCount'] == null ? null : map['minNodeCount'] as int,
      totalMaxNodeCount: map['totalMaxNodeCount'] == null
          ? null
          : map['totalMaxNodeCount'] as int,
      totalMinNodeCount: map['totalMinNodeCount'] == null
          ? null
          : map['totalMinNodeCount'] as int,
    );
  }
}
