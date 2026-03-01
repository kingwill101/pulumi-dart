// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_advertisement_response.dart';
import 'ip_address_pool_response.dart';
import 'service_load_balancer_bgp_peer_response.dart';

class BgpServiceLoadBalancerConfigurationResponse {
  /// The association of IP address pools to the communities and peers, allowing for announcement of IPs.
  final List<BgpAdvertisementResponse>? bgpAdvertisements;
  /// The list of additional BgpPeer entities that the Kubernetes cluster will peer with. All peering must be explicitly defined.
  final List<ServiceLoadBalancerBgpPeerResponse>? bgpPeers;
  /// The indicator to specify if the load balancer peers with the network fabric.
  final String? fabricPeeringEnabled;
  /// The list of pools of IP addresses that can be allocated to load balancer services.
  final List<IpAddressPoolResponse>? ipAddressPools;

  /// Creates a new [BgpServiceLoadBalancerConfigurationResponse].
  /// [bgpAdvertisements] The association of IP address pools to the communities and peers, allowing for announcement of IPs.
  /// [bgpPeers] The list of additional BgpPeer entities that the Kubernetes cluster will peer with. All peering must be explicitly defined.
  /// [fabricPeeringEnabled] The indicator to specify if the load balancer peers with the network fabric.
  /// [ipAddressPools] The list of pools of IP addresses that can be allocated to load balancer services.
  BgpServiceLoadBalancerConfigurationResponse({
    this.bgpAdvertisements,
    this.bgpPeers,
    this.fabricPeeringEnabled,
    this.ipAddressPools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpAdvertisements': ?bgpAdvertisements == null ? null : pulumi.Input.encodeList<BgpAdvertisementResponse, Map<String, dynamic>>(bgpAdvertisements!, (value) => value.toMap()),
      'bgpPeers': ?bgpPeers == null ? null : pulumi.Input.encodeList<ServiceLoadBalancerBgpPeerResponse, Map<String, dynamic>>(bgpPeers!, (value) => value.toMap()),
      'fabricPeeringEnabled': ?fabricPeeringEnabled,
      'ipAddressPools': ?ipAddressPools == null ? null : pulumi.Input.encodeList<IpAddressPoolResponse, Map<String, dynamic>>(ipAddressPools!, (value) => value.toMap()),
    };
  }

  factory BgpServiceLoadBalancerConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return BgpServiceLoadBalancerConfigurationResponse(
      bgpAdvertisements: map['bgpAdvertisements'] == null ? null : pulumi.Input.decodeList<BgpAdvertisementResponse>(map['bgpAdvertisements'], (value) => BgpAdvertisementResponse.fromMap((value as Map).cast<String, dynamic>())),
      bgpPeers: map['bgpPeers'] == null ? null : pulumi.Input.decodeList<ServiceLoadBalancerBgpPeerResponse>(map['bgpPeers'], (value) => ServiceLoadBalancerBgpPeerResponse.fromMap((value as Map).cast<String, dynamic>())),
      fabricPeeringEnabled: map['fabricPeeringEnabled'] == null ? null : map['fabricPeeringEnabled'] as String,
      ipAddressPools: map['ipAddressPools'] == null ? null : pulumi.Input.decodeList<IpAddressPoolResponse>(map['ipAddressPools'], (value) => IpAddressPoolResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

