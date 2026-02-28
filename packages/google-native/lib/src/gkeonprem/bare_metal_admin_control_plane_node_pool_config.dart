// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_node_pool_config.dart';

/// BareMetalAdminControlPlaneNodePoolConfig specifies the control plane node pool configuration. We have a control plane specific node pool config so that we can flexible about supporting control plane specific fields in the future.
class BareMetalAdminControlPlaneNodePoolConfig {
  /// The generic configuration for a node pool running the control plane.
  final BareMetalNodePoolConfig nodePoolConfig;

  /// Creates a new [BareMetalAdminControlPlaneNodePoolConfig].
  /// [nodePoolConfig] The generic configuration for a node pool running the control plane.
  BareMetalAdminControlPlaneNodePoolConfig({
    required this.nodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodePoolConfig'] = nodePoolConfig.toMap();
    return map;
  }

  factory BareMetalAdminControlPlaneNodePoolConfig.fromMap(
      Map<String, dynamic> map) {
    return BareMetalAdminControlPlaneNodePoolConfig(
      nodePoolConfig: BareMetalNodePoolConfig.fromMap(
          (map['nodePoolConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
