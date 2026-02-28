// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_virtual_cluster_config_kubernetes_cluster_config_gke_cluster_config_node_pool_target_node_pool_config.dart';

class ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTarget {
  /// The target GKE node pool.
  final String nodePool;

  /// The configuration for the GKE node pool.
  /// If specified, Dataproc attempts to create a node pool with the specified shape.
  /// If one with the same name already exists, it is verified against all specified fields.
  /// If a field differs, the virtual cluster creation will fail.
  final ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfig?
      nodePoolConfig;

  /// The roles associated with the GKE node pool.
  /// One of `"DEFAULT"`, `"CONTROLLER"`, `"SPARK_DRIVER"` or `"SPARK_EXECUTOR"`.
  final List<String> roles;

  /// Creates a new [ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTarget].
  /// [nodePool] The target GKE node pool.
  /// [nodePoolConfig] The configuration for the GKE node pool.
  /// [roles] The roles associated with the GKE node pool.
  ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTarget({
    required this.nodePool,
    this.nodePoolConfig,
    required this.roles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodePool'] = nodePool;
    final nodePoolConfigValue = nodePoolConfig;
    if (nodePoolConfigValue != null) {
      map['nodePoolConfig'] = nodePoolConfigValue.toMap();
    }
    map['roles'] = roles;
    return map;
  }

  factory ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTarget.fromMap(
      Map<String, dynamic> map) {
    return ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTarget(
      nodePool: map['nodePool'] as String,
      nodePoolConfig: map['nodePoolConfig'] == null
          ? null
          : ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfig
              .fromMap((map['nodePoolConfig'] as Map).cast<String, dynamic>()),
      roles: (map['roles'] as List).cast<String>(),
    );
  }
}
