// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_gateway_connection_vpn_link_custom_bgp_address.dart';
import 'vpn_gateway_connection_vpn_link_ipsec_policy.dart';

class VpnGatewayConnectionVpnLink {
  /// The expected connection bandwidth in MBPS. Defaults to `10`.
  final int? bandwidthMbps;
  /// Should the BGP be enabled? Defaults to `false`. Changing this forces a new VPN Gateway Connection to be created.
  final bool? bgpEnabled;
  /// The connection mode of this VPN Link. Possible values are `Default`, `InitiatorOnly` and `ResponderOnly`. Defaults to `Default`.
  final String? connectionMode;
  /// One or more `custom_bgp_address` blocks as defined below.
  final List<VpnGatewayConnectionVpnLinkCustomBgpAddress>? customBgpAddresses;
  /// The dead peer detection timeout of this connection in seconds. Possible values are between `9` and `3600`.
  final int? dpdTimeoutSeconds;
  /// A list of the egress NAT Rule Ids.
  final List<String>? egressNatRuleIds;
  /// A list of the ingress NAT Rule Ids.
  final List<String>? ingressNatRuleIds;
  /// One or more `ipsec_policy` blocks as defined above.
  final List<VpnGatewayConnectionVpnLinkIpsecPolicy>? ipsecPolicies;
  /// Whether to use local Azure IP to initiate connection? Defaults to `false`.
  final bool? localAzureIpAddressEnabled;
  /// The name which should be used for this VPN Link Connection.
  final String name;
  /// Whether to enable policy-based traffic selectors? Defaults to `false`.
  final bool? policyBasedTrafficSelectorEnabled;
  /// The protocol used for this VPN Link Connection. Possible values are `IKEv1` and `IKEv2`. Defaults to `IKEv2`.
  final String? protocol;
  /// Should the rate limit be enabled? Defaults to `false`.
  final bool? ratelimitEnabled;
  /// Routing weight for this VPN Link Connection. Defaults to `0`.
  final int? routeWeight;
  /// SharedKey for this VPN Link Connection.
  final String? sharedKey;
  /// The ID of the connected VPN Site Link. Changing this forces a new VPN Gateway Connection to be created.
  final String vpnSiteLinkId;

  /// Creates a new [VpnGatewayConnectionVpnLink].
  /// [bandwidthMbps] The expected connection bandwidth in MBPS. Defaults to `10`.
  /// [bgpEnabled] Should the BGP be enabled? Defaults to `false`. Changing this forces a new VPN Gateway Connection to be created.
  /// [connectionMode] The connection mode of this VPN Link. Possible values are `Default`, `InitiatorOnly` and `ResponderOnly`. Defaults to `Default`.
  /// [customBgpAddresses] One or more `custom_bgp_address` blocks as defined below.
  /// [dpdTimeoutSeconds] The dead peer detection timeout of this connection in seconds. Possible values are between `9` and `3600`.
  /// [egressNatRuleIds] A list of the egress NAT Rule Ids.
  /// [ingressNatRuleIds] A list of the ingress NAT Rule Ids.
  /// [ipsecPolicies] One or more `ipsec_policy` blocks as defined above.
  /// [localAzureIpAddressEnabled] Whether to use local Azure IP to initiate connection? Defaults to `false`.
  /// [name] The name which should be used for this VPN Link Connection.
  /// [policyBasedTrafficSelectorEnabled] Whether to enable policy-based traffic selectors? Defaults to `false`.
  /// [protocol] The protocol used for this VPN Link Connection. Possible values are `IKEv1` and `IKEv2`. Defaults to `IKEv2`.
  /// [ratelimitEnabled] Should the rate limit be enabled? Defaults to `false`.
  /// [routeWeight] Routing weight for this VPN Link Connection. Defaults to `0`.
  /// [sharedKey] SharedKey for this VPN Link Connection.
  /// [vpnSiteLinkId] The ID of the connected VPN Site Link. Changing this forces a new VPN Gateway Connection to be created.
  VpnGatewayConnectionVpnLink({
    this.bandwidthMbps,
    this.bgpEnabled,
    this.connectionMode,
    this.customBgpAddresses,
    this.dpdTimeoutSeconds,
    this.egressNatRuleIds,
    this.ingressNatRuleIds,
    this.ipsecPolicies,
    this.localAzureIpAddressEnabled,
    required this.name,
    this.policyBasedTrafficSelectorEnabled,
    this.protocol,
    this.ratelimitEnabled,
    this.routeWeight,
    this.sharedKey,
    required this.vpnSiteLinkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthMbps': ?bandwidthMbps,
      'bgpEnabled': ?bgpEnabled,
      'connectionMode': ?connectionMode,
      'customBgpAddresses': ?customBgpAddresses == null ? null : pulumi.Input.encodeList<VpnGatewayConnectionVpnLinkCustomBgpAddress, Map<String, dynamic>>(customBgpAddresses!, (value) => value.toMap()),
      'dpdTimeoutSeconds': ?dpdTimeoutSeconds,
      'egressNatRuleIds': ?egressNatRuleIds,
      'ingressNatRuleIds': ?ingressNatRuleIds,
      'ipsecPolicies': ?ipsecPolicies == null ? null : pulumi.Input.encodeList<VpnGatewayConnectionVpnLinkIpsecPolicy, Map<String, dynamic>>(ipsecPolicies!, (value) => value.toMap()),
      'localAzureIpAddressEnabled': ?localAzureIpAddressEnabled,
      'name': name,
      'policyBasedTrafficSelectorEnabled': ?policyBasedTrafficSelectorEnabled,
      'protocol': ?protocol,
      'ratelimitEnabled': ?ratelimitEnabled,
      'routeWeight': ?routeWeight,
      'sharedKey': ?sharedKey,
      'vpnSiteLinkId': vpnSiteLinkId,
    };
  }

  factory VpnGatewayConnectionVpnLink.fromMap(Map<String, dynamic> map) {
    return VpnGatewayConnectionVpnLink(
      bandwidthMbps: map['bandwidthMbps'] == null ? null : map['bandwidthMbps'] as int,
      bgpEnabled: map['bgpEnabled'] == null ? null : map['bgpEnabled'] as bool,
      connectionMode: map['connectionMode'] == null ? null : map['connectionMode'] as String,
      customBgpAddresses: map['customBgpAddresses'] == null ? null : pulumi.Input.decodeList<VpnGatewayConnectionVpnLinkCustomBgpAddress>(map['customBgpAddresses'], (value) => VpnGatewayConnectionVpnLinkCustomBgpAddress.fromMap((value as Map).cast<String, dynamic>())),
      dpdTimeoutSeconds: map['dpdTimeoutSeconds'] == null ? null : map['dpdTimeoutSeconds'] as int,
      egressNatRuleIds: map['egressNatRuleIds'] == null ? null : (map['egressNatRuleIds'] as List).cast<String>(),
      ingressNatRuleIds: map['ingressNatRuleIds'] == null ? null : (map['ingressNatRuleIds'] as List).cast<String>(),
      ipsecPolicies: map['ipsecPolicies'] == null ? null : pulumi.Input.decodeList<VpnGatewayConnectionVpnLinkIpsecPolicy>(map['ipsecPolicies'], (value) => VpnGatewayConnectionVpnLinkIpsecPolicy.fromMap((value as Map).cast<String, dynamic>())),
      localAzureIpAddressEnabled: map['localAzureIpAddressEnabled'] == null ? null : map['localAzureIpAddressEnabled'] as bool,
      name: map['name'] as String,
      policyBasedTrafficSelectorEnabled: map['policyBasedTrafficSelectorEnabled'] == null ? null : map['policyBasedTrafficSelectorEnabled'] as bool,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      ratelimitEnabled: map['ratelimitEnabled'] == null ? null : map['ratelimitEnabled'] as bool,
      routeWeight: map['routeWeight'] == null ? null : map['routeWeight'] as int,
      sharedKey: map['sharedKey'] == null ? null : map['sharedKey'] as String,
      vpnSiteLinkId: map['vpnSiteLinkId'] as String,
    );
  }
}

