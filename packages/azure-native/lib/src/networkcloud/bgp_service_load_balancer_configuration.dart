// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_advertisement.dart';
import 'ip_address_pool.dart';
import 'service_load_balancer_bgp_peer.dart';

class BgpServiceLoadBalancerConfiguration {
  /// The association of IP address pools to the communities and peers, allowing for announcement of IPs.
  final List<BgpAdvertisement>? bgpAdvertisements;
  /// The list of additional BgpPeer entities that the Kubernetes cluster will peer with. All peering must be explicitly defined.
  final List<ServiceLoadBalancerBgpPeer>? bgpPeers;
  /// The indicator to specify if the load balancer peers with the network fabric.
  final String? fabricPeeringEnabled;
  /// The list of pools of IP addresses that can be allocated to load balancer services.
  final List<IpAddressPool>? ipAddressPools;

  /// Creates a new [BgpServiceLoadBalancerConfiguration].
  /// [bgpAdvertisements] The association of IP address pools to the communities and peers, allowing for announcement of IPs.
  /// [bgpPeers] The list of additional BgpPeer entities that the Kubernetes cluster will peer with. All peering must be explicitly defined.
  /// [fabricPeeringEnabled] The indicator to specify if the load balancer peers with the network fabric.
  /// [ipAddressPools] The list of pools of IP addresses that can be allocated to load balancer services.
  BgpServiceLoadBalancerConfiguration({
    this.bgpAdvertisements,
    this.bgpPeers,
    this.fabricPeeringEnabled,
    this.ipAddressPools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpAdvertisements': ?bgpAdvertisements == null ? null : pulumi.Input.encodeList<BgpAdvertisement, Map<String, dynamic>>(bgpAdvertisements!, (value) => value.toMap()),
      'bgpPeers': ?bgpPeers == null ? null : pulumi.Input.encodeList<ServiceLoadBalancerBgpPeer, Map<String, dynamic>>(bgpPeers!, (value) => value.toMap()),
      'fabricPeeringEnabled': ?fabricPeeringEnabled,
      'ipAddressPools': ?ipAddressPools == null ? null : pulumi.Input.encodeList<IpAddressPool, Map<String, dynamic>>(ipAddressPools!, (value) => value.toMap()),
    };
  }

  factory BgpServiceLoadBalancerConfiguration.fromMap(Map<String, dynamic> map) {
    return BgpServiceLoadBalancerConfiguration(
      bgpAdvertisements: map['bgpAdvertisements'] == null ? null : pulumi.Input.decodeList<BgpAdvertisement>(map['bgpAdvertisements'], (value) => BgpAdvertisement.fromMap((value as Map).cast<String, dynamic>())),
      bgpPeers: map['bgpPeers'] == null ? null : pulumi.Input.decodeList<ServiceLoadBalancerBgpPeer>(map['bgpPeers'], (value) => ServiceLoadBalancerBgpPeer.fromMap((value as Map).cast<String, dynamic>())),
      fabricPeeringEnabled: map['fabricPeeringEnabled'] == null ? null : map['fabricPeeringEnabled'] as String,
      ipAddressPools: map['ipAddressPools'] == null ? null : pulumi.Input.decodeList<IpAddressPool>(map['ipAddressPools'], (value) => IpAddressPool.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

