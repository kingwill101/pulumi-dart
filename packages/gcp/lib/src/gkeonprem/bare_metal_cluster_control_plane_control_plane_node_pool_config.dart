// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_cluster_control_plane_control_plane_node_pool_config_node_pool_config.dart';

class BareMetalClusterControlPlaneControlPlaneNodePoolConfig {
  /// The generic configuration for a node pool running the control plane.
  /// Structure is documented below.
  final BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfig
  nodePoolConfig;

  /// Creates a new [BareMetalClusterControlPlaneControlPlaneNodePoolConfig].
  /// [nodePoolConfig] The generic configuration for a node pool running the control plane.
  BareMetalClusterControlPlaneControlPlaneNodePoolConfig({
    required this.nodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nodePoolConfig': nodePoolConfig.toMap()};
  }

  factory BareMetalClusterControlPlaneControlPlaneNodePoolConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalClusterControlPlaneControlPlaneNodePoolConfig(
      nodePoolConfig:
          BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfig.fromMap(
            (map['nodePoolConfig'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
