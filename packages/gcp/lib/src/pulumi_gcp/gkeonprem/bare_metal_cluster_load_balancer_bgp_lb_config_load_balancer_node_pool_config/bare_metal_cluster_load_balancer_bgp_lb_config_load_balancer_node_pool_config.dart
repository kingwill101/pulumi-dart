// ignore_for_file: unused_element, unnecessary_cast

import '../bare_metal_cluster_load_balancer_bgp_lb_config_load_balancer_node_pool_config_node_pool_config/bare_metal_cluster_load_balancer_bgp_lb_config_load_balancer_node_pool_config_node_pool_config.dart';

class BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig {
  /// The generic configuration for a node pool running a load balancer.
  /// Structure is documented below.
  final BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig?
      nodePoolConfig;

  BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig({
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

  factory BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig.fromMap(
      Map<String, dynamic> map) {
    return BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig(
      nodePoolConfig: map['nodePoolConfig'] == null
          ? null
          : BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig
              .fromMap((map['nodePoolConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
