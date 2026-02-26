// ignore_for_file: unused_element, unnecessary_cast

import '../bare_metal_cluster_control_plane_control_plane_node_pool_config_node_pool_config/bare_metal_cluster_control_plane_control_plane_node_pool_config_node_pool_config.dart';

class BareMetalClusterControlPlaneControlPlaneNodePoolConfig {
  /// The generic configuration for a node pool running the control plane.
  /// Structure is documented below.
  final BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfig
      nodePoolConfig;

  BareMetalClusterControlPlaneControlPlaneNodePoolConfig({
    required this.nodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodePoolConfig'] = nodePoolConfig.toMap();
    return map;
  }

  factory BareMetalClusterControlPlaneControlPlaneNodePoolConfig.fromMap(
      Map<String, dynamic> map) {
    return BareMetalClusterControlPlaneControlPlaneNodePoolConfig(
      nodePoolConfig:
          BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfig
              .fromMap((map['nodePoolConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
