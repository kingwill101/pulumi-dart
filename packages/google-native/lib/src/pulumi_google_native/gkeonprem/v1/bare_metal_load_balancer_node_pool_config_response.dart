// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_node_pool_config_response.dart';

/// Specifies the load balancer's node pool configuration.
class BareMetalLoadBalancerNodePoolConfigResponse {
  /// The generic configuration for a node pool running a load balancer.
  final BareMetalNodePoolConfigResponse nodePoolConfig;

  BareMetalLoadBalancerNodePoolConfigResponse({
    required this.nodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodePoolConfig'] = nodePoolConfig.toMap();
    return map;
  }

  factory BareMetalLoadBalancerNodePoolConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return BareMetalLoadBalancerNodePoolConfigResponse(
      nodePoolConfig: BareMetalNodePoolConfigResponse.fromMap(
          (map['nodePoolConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
