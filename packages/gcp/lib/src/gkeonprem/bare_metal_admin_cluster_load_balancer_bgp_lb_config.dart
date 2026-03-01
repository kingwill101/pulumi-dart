// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_cluster_load_balancer_bgp_lb_config_address_pool.dart';
import 'bare_metal_admin_cluster_load_balancer_bgp_lb_config_bgp_peer_config.dart';
import 'bare_metal_admin_cluster_load_balancer_bgp_lb_config_load_balancer_node_pool_config.dart';

class BareMetalAdminClusterLoadBalancerBgpLbConfig {
  /// a list of non-overlapping IP pools used
  /// by load balancer typed services.
  /// Structure is documented below.
  final List<BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool>?
  addressPools;

  /// BGP autonomous system number (ASN) of the cluster.
  final int? asn;

  /// BGP autonomous system number (ASN) of the cluster.
  /// Structure is documented below.
  final List<BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfig>?
  bgpPeerConfigs;

  /// A nested object resource.
  /// Structure is documented below.
  final BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig?
  loadBalancerNodePoolConfig;

  /// Creates a new [BareMetalAdminClusterLoadBalancerBgpLbConfig].
  /// [addressPools] a list of non-overlapping IP pools used
  /// [asn] BGP autonomous system number (ASN) of the cluster.
  /// [bgpPeerConfigs] BGP autonomous system number (ASN) of the cluster.
  /// [loadBalancerNodePoolConfig] A nested object resource.
  BareMetalAdminClusterLoadBalancerBgpLbConfig({
    this.addressPools,
    this.asn,
    this.bgpPeerConfigs,
    this.loadBalancerNodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPools': ?addressPools == null
          ? null
          : pulumi.Input.encodeList<
              BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool,
              Map<String, dynamic>
            >(addressPools!, (value) => value.toMap()),
      'asn': ?asn,
      'bgpPeerConfigs': ?bgpPeerConfigs == null
          ? null
          : pulumi.Input.encodeList<
              BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfig,
              Map<String, dynamic>
            >(bgpPeerConfigs!, (value) => value.toMap()),
      'loadBalancerNodePoolConfig': ?loadBalancerNodePoolConfig == null
          ? null
          : loadBalancerNodePoolConfig!.toMap(),
    };
  }

  factory BareMetalAdminClusterLoadBalancerBgpLbConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalAdminClusterLoadBalancerBgpLbConfig(
      addressPools: map['addressPools'] == null
          ? null
          : pulumi.Input.decodeList<
              BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool
            >(
              map['addressPools'],
              (value) =>
                  BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      asn: map['asn'] == null ? null : map['asn'] as int,
      bgpPeerConfigs: map['bgpPeerConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfig
            >(
              map['bgpPeerConfigs'],
              (value) =>
                  BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfig.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      loadBalancerNodePoolConfig: map['loadBalancerNodePoolConfig'] == null
          ? null
          : BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig.fromMap(
              (map['loadBalancerNodePoolConfig'] as Map)
                  .cast<String, dynamic>(),
            ),
    );
  }
}
