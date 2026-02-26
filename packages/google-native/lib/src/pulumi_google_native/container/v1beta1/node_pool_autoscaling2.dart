// ignore_for_file: unused_element, unnecessary_cast

import 'node_pool_autoscaling_location_policy2.dart';

/// NodePoolAutoscaling contains information required by cluster autoscaler to adjust the size of the node pool to the current cluster usage.
class NodePoolAutoscaling2 {
  /// Can this node pool be deleted automatically.
  final bool? autoprovisioned;

  /// Is autoscaling enabled for this node pool.
  final bool? enabled;

  /// Location policy used when scaling up a nodepool.
  final NodePoolAutoscalingLocationPolicy2? locationPolicy;

  /// Maximum number of nodes for one location in the NodePool. Must be >= min_node_count. There has to be enough quota to scale up the cluster.
  final int? maxNodeCount;

  /// Minimum number of nodes for one location in the NodePool. Must be >= 1 and <= max_node_count.
  final int? minNodeCount;

  /// Maximum number of nodes in the node pool. Must be greater than total_min_node_count. There has to be enough quota to scale up the cluster. The total_*_node_count fields are mutually exclusive with the *_node_count fields.
  final int? totalMaxNodeCount;

  /// Minimum number of nodes in the node pool. Must be greater than 1 less than total_max_node_count. The total_*_node_count fields are mutually exclusive with the *_node_count fields.
  final int? totalMinNodeCount;

  NodePoolAutoscaling2({
    this.autoprovisioned,
    this.enabled,
    this.locationPolicy,
    this.maxNodeCount,
    this.minNodeCount,
    this.totalMaxNodeCount,
    this.totalMinNodeCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoprovisionedValue = autoprovisioned;
    if (autoprovisionedValue != null) {
      map['autoprovisioned'] = autoprovisionedValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final locationPolicyValue = locationPolicy;
    if (locationPolicyValue != null) {
      map['locationPolicy'] = locationPolicyValue.value;
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

  factory NodePoolAutoscaling2.fromMap(Map<String, dynamic> map) {
    return NodePoolAutoscaling2(
      autoprovisioned: map['autoprovisioned'] == null
          ? null
          : map['autoprovisioned'] as bool,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      locationPolicy: map['locationPolicy'] == null
          ? null
          : NodePoolAutoscalingLocationPolicy2.fromValue(
              map['locationPolicy'] as String),
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
