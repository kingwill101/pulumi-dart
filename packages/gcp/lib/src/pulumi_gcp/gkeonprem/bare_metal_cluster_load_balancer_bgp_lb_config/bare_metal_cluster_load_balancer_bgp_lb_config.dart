// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bare_metal_cluster_load_balancer_bgp_lb_config_address_pool/bare_metal_cluster_load_balancer_bgp_lb_config_address_pool.dart';
import '../bare_metal_cluster_load_balancer_bgp_lb_config_bgp_peer_config/bare_metal_cluster_load_balancer_bgp_lb_config_bgp_peer_config.dart';
import '../bare_metal_cluster_load_balancer_bgp_lb_config_load_balancer_node_pool_config/bare_metal_cluster_load_balancer_bgp_lb_config_load_balancer_node_pool_config.dart';

class BareMetalClusterLoadBalancerBgpLbConfig {
  /// AddressPools is a list of non-overlapping IP pools used by load balancer
  /// typed services. All addresses must be routable to load balancer nodes.
  /// IngressVIP must be included in the pools.
  /// Structure is documented below.
  final List<BareMetalClusterLoadBalancerBgpLbConfigAddressPool> addressPools;

  /// BGP autonomous system number (ASN) of the cluster.
  /// This field can be updated after cluster creation.
  final int asn;

  /// The list of BGP peers that the cluster will connect to.
  /// At least one peer must be configured for each control plane node.
  /// Control plane nodes will connect to these peers to advertise the control
  /// plane VIP. The Services load balancer also uses these peers by default.
  /// This field can be updated after cluster creation.
  /// Structure is documented below.
  final List<BareMetalClusterLoadBalancerBgpLbConfigBgpPeerConfig>
      bgpPeerConfigs;

  /// Specifies the node pool running data plane load balancing. L2 connectivity
  /// is required among nodes in this pool. If missing, the control plane node
  /// pool is used for data plane load balancing.
  /// Structure is documented below.
  final BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig?
      loadBalancerNodePoolConfig;

  BareMetalClusterLoadBalancerBgpLbConfig({
    required this.addressPools,
    required this.asn,
    required this.bgpPeerConfigs,
    this.loadBalancerNodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addressPools'] = Input.encodeList<
        BareMetalClusterLoadBalancerBgpLbConfigAddressPool,
        Map<String, dynamic>>(addressPools, (value) => value.toMap());
    map['asn'] = asn;
    map['bgpPeerConfigs'] = Input.encodeList<
        BareMetalClusterLoadBalancerBgpLbConfigBgpPeerConfig,
        Map<String, dynamic>>(bgpPeerConfigs, (value) => value.toMap());
    final loadBalancerNodePoolConfigValue = loadBalancerNodePoolConfig;
    if (loadBalancerNodePoolConfigValue != null) {
      map['loadBalancerNodePoolConfig'] =
          loadBalancerNodePoolConfigValue.toMap();
    }
    return map;
  }

  factory BareMetalClusterLoadBalancerBgpLbConfig.fromMap(
      Map<String, dynamic> map) {
    return BareMetalClusterLoadBalancerBgpLbConfig(
      addressPools:
          Input.decodeList<BareMetalClusterLoadBalancerBgpLbConfigAddressPool>(
              map['addressPools'],
              (value) =>
                  BareMetalClusterLoadBalancerBgpLbConfigAddressPool.fromMap(
                      (value as Map).cast<String, dynamic>())),
      asn: map['asn'] as int,
      bgpPeerConfigs: Input.decodeList<
              BareMetalClusterLoadBalancerBgpLbConfigBgpPeerConfig>(
          map['bgpPeerConfigs'],
          (value) =>
              BareMetalClusterLoadBalancerBgpLbConfigBgpPeerConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      loadBalancerNodePoolConfig: map['loadBalancerNodePoolConfig'] == null
          ? null
          : BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig
              .fromMap((map['loadBalancerNodePoolConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
