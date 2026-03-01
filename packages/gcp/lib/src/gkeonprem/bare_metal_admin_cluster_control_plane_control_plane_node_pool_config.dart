// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_admin_cluster_control_plane_control_plane_node_pool_config_node_pool_config.dart';

class BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfig {
  /// The generic configuration for a node pool running the control plane.
  /// Structure is documented below.
  final BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfig
  nodePoolConfig;

  /// Creates a new [BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfig].
  /// [nodePoolConfig] The generic configuration for a node pool running the control plane.
  BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfig({
    required this.nodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nodePoolConfig': nodePoolConfig.toMap()};
  }

  factory BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfig(
      nodePoolConfig:
          BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfig.fromMap(
            (map['nodePoolConfig'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
