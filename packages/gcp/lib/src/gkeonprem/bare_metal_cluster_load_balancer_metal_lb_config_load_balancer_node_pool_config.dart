// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_cluster_load_balancer_metal_lb_config_load_balancer_node_pool_config_node_pool_config.dart';

class BareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfig {
  /// The generic configuration for a node pool running a load balancer.
  /// Structure is documented below.
  final BareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfigNodePoolConfig?
  nodePoolConfig;

  /// Creates a new [BareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfig].
  /// [nodePoolConfig] The generic configuration for a node pool running a load balancer.
  BareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfig({
    this.nodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodePoolConfig': ?nodePoolConfig == null
          ? null
          : nodePoolConfig!.toMap(),
    };
  }

  factory BareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfig(
      nodePoolConfig: map['nodePoolConfig'] == null
          ? null
          : BareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfigNodePoolConfig.fromMap(
              (map['nodePoolConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
