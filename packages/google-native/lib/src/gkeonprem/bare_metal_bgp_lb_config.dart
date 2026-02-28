// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_bgp_peer_config.dart';
import 'bare_metal_load_balancer_address_pool.dart';
import 'bare_metal_load_balancer_node_pool_config.dart';

/// BareMetalBgpLbConfig represents configuration parameters for a Border Gateway Protocol (BGP) load balancer.
class BareMetalBgpLbConfig {
  /// AddressPools is a list of non-overlapping IP pools used by load balancer typed services. All addresses must be routable to load balancer nodes. IngressVIP must be included in the pools.
  final List<BareMetalLoadBalancerAddressPool> addressPools;
  /// BGP autonomous system number (ASN) of the cluster. This field can be updated after cluster creation.
  final String asn;
  /// The list of BGP peers that the cluster will connect to. At least one peer must be configured for each control plane node. Control plane nodes will connect to these peers to advertise the control plane VIP. The Services load balancer also uses these peers by default. This field can be updated after cluster creation.
  final List<BareMetalBgpPeerConfig> bgpPeerConfigs;
  /// Specifies the node pool running data plane load balancing. L2 connectivity is required among nodes in this pool. If missing, the control plane node pool is used for data plane load balancing.
  final BareMetalLoadBalancerNodePoolConfig? loadBalancerNodePoolConfig;

  /// Creates a new [BareMetalBgpLbConfig].
  /// [addressPools] AddressPools is a list of non-overlapping IP pools used by load balancer typed services. All addresses must be routable to load balancer nodes. IngressVIP must be included in the pools.
  /// [asn] BGP autonomous system number (ASN) of the cluster. This field can be updated after cluster creation.
  /// [bgpPeerConfigs] The list of BGP peers that the cluster will connect to. At least one peer must be configured for each control plane node. Control plane nodes will connect to these peers to advertise the control plane VIP. The Services load balancer also uses these peers by default. This field can be updated after cluster creation.
  /// [loadBalancerNodePoolConfig] Specifies the node pool running data plane load balancing. L2 connectivity is required among nodes in this pool. If missing, the control plane node pool is used for data plane load balancing.
  BareMetalBgpLbConfig({
    required this.addressPools,
    required this.asn,
    required this.bgpPeerConfigs,
    this.loadBalancerNodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPools': pulumi.Input.encodeList<BareMetalLoadBalancerAddressPool, Map<String, dynamic>>(addressPools, (value) => value.toMap()),
      'asn': asn,
      'bgpPeerConfigs': pulumi.Input.encodeList<BareMetalBgpPeerConfig, Map<String, dynamic>>(bgpPeerConfigs, (value) => value.toMap()),
      'loadBalancerNodePoolConfig': ?loadBalancerNodePoolConfig == null ? null : loadBalancerNodePoolConfig!.toMap(),
    };
  }

  factory BareMetalBgpLbConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalBgpLbConfig(
      addressPools: pulumi.Input.decodeList<BareMetalLoadBalancerAddressPool>(map['addressPools'], (value) => BareMetalLoadBalancerAddressPool.fromMap((value as Map).cast<String, dynamic>())),
      asn: map['asn'] as String,
      bgpPeerConfigs: pulumi.Input.decodeList<BareMetalBgpPeerConfig>(map['bgpPeerConfigs'], (value) => BareMetalBgpPeerConfig.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerNodePoolConfig: map['loadBalancerNodePoolConfig'] == null ? null : BareMetalLoadBalancerNodePoolConfig.fromMap((map['loadBalancerNodePoolConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

