// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_node_pool_config_response.dart';

/// Specifies the control plane node pool configuration.
class BareMetalControlPlaneNodePoolConfigResponse {
  /// The generic configuration for a node pool running the control plane.
  final BareMetalNodePoolConfigResponse nodePoolConfig;

  /// Creates a new [BareMetalControlPlaneNodePoolConfigResponse].
  /// [nodePoolConfig] The generic configuration for a node pool running the control plane.
  BareMetalControlPlaneNodePoolConfigResponse({
    required this.nodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodePoolConfig'] = nodePoolConfig.toMap();
    return map;
  }

  factory BareMetalControlPlaneNodePoolConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return BareMetalControlPlaneNodePoolConfigResponse(
      nodePoolConfig: BareMetalNodePoolConfigResponse.fromMap(
          (map['nodePoolConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
