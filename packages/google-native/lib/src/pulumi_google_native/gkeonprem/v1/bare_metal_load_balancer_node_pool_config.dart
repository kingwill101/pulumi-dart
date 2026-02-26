// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_node_pool_config.dart';

/// Specifies the load balancer's node pool configuration.
class BareMetalLoadBalancerNodePoolConfig {
  /// The generic configuration for a node pool running a load balancer.
  final BareMetalNodePoolConfig? nodePoolConfig;

  BareMetalLoadBalancerNodePoolConfig({
    this.nodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nodePoolConfigValue = nodePoolConfig;
    if (nodePoolConfigValue != null) {
      map['nodePoolConfig'] = nodePoolConfigValue.toMap();
    }
    return map;
  }

  factory BareMetalLoadBalancerNodePoolConfig.fromMap(
      Map<String, dynamic> map) {
    return BareMetalLoadBalancerNodePoolConfig(
      nodePoolConfig: map['nodePoolConfig'] == null
          ? null
          : BareMetalNodePoolConfig.fromMap(
              (map['nodePoolConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
