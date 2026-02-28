// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_node_pool_config_response.dart';

/// BareMetalAdminControlPlaneNodePoolConfig specifies the control plane node pool configuration. We have a control plane specific node pool config so that we can flexible about supporting control plane specific fields in the future.
class BareMetalAdminControlPlaneNodePoolConfigResponse {
  /// The generic configuration for a node pool running the control plane.
  final BareMetalNodePoolConfigResponse nodePoolConfig;

  /// Creates a new [BareMetalAdminControlPlaneNodePoolConfigResponse].
  /// [nodePoolConfig] The generic configuration for a node pool running the control plane.
  BareMetalAdminControlPlaneNodePoolConfigResponse({
    required this.nodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodePoolConfig'] = nodePoolConfig.toMap();
    return map;
  }

  factory BareMetalAdminControlPlaneNodePoolConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return BareMetalAdminControlPlaneNodePoolConfigResponse(
      nodePoolConfig: BareMetalNodePoolConfigResponse.fromMap(
          (map['nodePoolConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
