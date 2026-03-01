// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_custom_bgp_ip_address_ip_configuration.dart';
import 'ipsec_policy.dart';
import 'sub_resource.dart';

/// VpnSiteLinkConnection Resource.
class VpnSiteLinkConnection {
  /// Expected bandwidth in MBPS.
  final int? connectionBandwidth;
  /// Dead Peer Detection timeout in seconds for VpnLink connection.
  final int? dpdTimeoutSeconds;
  /// List of egress NatRules.
  final List<SubResource>? egressNatRules;
  /// EnableBgp flag.
  final bool? enableBgp;
  /// EnableBgp flag.
  final bool? enableRateLimiting;
  /// Resource ID.
  final String? id;
  /// List of ingress NatRules.
  final List<SubResource>? ingressNatRules;
  /// The IPSec Policies to be considered by this connection.
  final List<IpsecPolicy>? ipsecPolicies;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Routing weight for vpn connection.
  final int? routingWeight;
  /// SharedKey for the vpn connection.
  final String? sharedKey;
  /// Use local azure ip to initiate connection.
  final bool? useLocalAzureIpAddress;
  /// Enable policy-based traffic selectors.
  final bool? usePolicyBasedTrafficSelectors;
  /// Connection protocol used for this connection.
  final String? vpnConnectionProtocolType;
  /// vpnGatewayCustomBgpAddresses used by this connection.
  final List<GatewayCustomBgpIpAddressIpConfiguration>? vpnGatewayCustomBgpAddresses;
  /// Vpn link connection mode.
  final String? vpnLinkConnectionMode;
  /// Id of the connected vpn site link.
  final SubResource? vpnSiteLink;

  /// Creates a new [VpnSiteLinkConnection].
  /// [connectionBandwidth] Expected bandwidth in MBPS.
  /// [dpdTimeoutSeconds] Dead Peer Detection timeout in seconds for VpnLink connection.
  /// [egressNatRules] List of egress NatRules.
  /// [enableBgp] EnableBgp flag.
  /// [enableRateLimiting] EnableBgp flag.
  /// [id] Resource ID.
  /// [ingressNatRules] List of ingress NatRules.
  /// [ipsecPolicies] The IPSec Policies to be considered by this connection.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [routingWeight] Routing weight for vpn connection.
  /// [sharedKey] SharedKey for the vpn connection.
  /// [useLocalAzureIpAddress] Use local azure ip to initiate connection.
  /// [usePolicyBasedTrafficSelectors] Enable policy-based traffic selectors.
  /// [vpnConnectionProtocolType] Connection protocol used for this connection.
  /// [vpnGatewayCustomBgpAddresses] vpnGatewayCustomBgpAddresses used by this connection.
  /// [vpnLinkConnectionMode] Vpn link connection mode.
  /// [vpnSiteLink] Id of the connected vpn site link.
  VpnSiteLinkConnection({
    this.connectionBandwidth,
    this.dpdTimeoutSeconds,
    this.egressNatRules,
    this.enableBgp,
    this.enableRateLimiting,
    this.id,
    this.ingressNatRules,
    this.ipsecPolicies,
    this.name,
    this.routingWeight,
    this.sharedKey,
    this.useLocalAzureIpAddress,
    this.usePolicyBasedTrafficSelectors,
    this.vpnConnectionProtocolType,
    this.vpnGatewayCustomBgpAddresses,
    this.vpnLinkConnectionMode,
    this.vpnSiteLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionBandwidth': ?connectionBandwidth,
      'dpdTimeoutSeconds': ?dpdTimeoutSeconds,
      'egressNatRules': ?egressNatRules == null ? null : pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(egressNatRules!, (value) => value.toMap()),
      'enableBgp': ?enableBgp,
      'enableRateLimiting': ?enableRateLimiting,
      'id': ?id,
      'ingressNatRules': ?ingressNatRules == null ? null : pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(ingressNatRules!, (value) => value.toMap()),
      'ipsecPolicies': ?ipsecPolicies == null ? null : pulumi.Input.encodeList<IpsecPolicy, Map<String, dynamic>>(ipsecPolicies!, (value) => value.toMap()),
      'name': ?name,
      'routingWeight': ?routingWeight,
      'sharedKey': ?sharedKey,
      'useLocalAzureIpAddress': ?useLocalAzureIpAddress,
      'usePolicyBasedTrafficSelectors': ?usePolicyBasedTrafficSelectors,
      'vpnConnectionProtocolType': ?vpnConnectionProtocolType,
      'vpnGatewayCustomBgpAddresses': ?vpnGatewayCustomBgpAddresses == null ? null : pulumi.Input.encodeList<GatewayCustomBgpIpAddressIpConfiguration, Map<String, dynamic>>(vpnGatewayCustomBgpAddresses!, (value) => value.toMap()),
      'vpnLinkConnectionMode': ?vpnLinkConnectionMode,
      'vpnSiteLink': ?vpnSiteLink == null ? null : vpnSiteLink!.toMap(),
    };
  }

  factory VpnSiteLinkConnection.fromMap(Map<String, dynamic> map) {
    return VpnSiteLinkConnection(
      connectionBandwidth: map['connectionBandwidth'] == null ? null : map['connectionBandwidth'] as int,
      dpdTimeoutSeconds: map['dpdTimeoutSeconds'] == null ? null : map['dpdTimeoutSeconds'] as int,
      egressNatRules: map['egressNatRules'] == null ? null : pulumi.Input.decodeList<SubResource>(map['egressNatRules'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>())),
      enableBgp: map['enableBgp'] == null ? null : map['enableBgp'] as bool,
      enableRateLimiting: map['enableRateLimiting'] == null ? null : map['enableRateLimiting'] as bool,
      id: map['id'] == null ? null : map['id'] as String,
      ingressNatRules: map['ingressNatRules'] == null ? null : pulumi.Input.decodeList<SubResource>(map['ingressNatRules'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>())),
      ipsecPolicies: map['ipsecPolicies'] == null ? null : pulumi.Input.decodeList<IpsecPolicy>(map['ipsecPolicies'], (value) => IpsecPolicy.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      routingWeight: map['routingWeight'] == null ? null : map['routingWeight'] as int,
      sharedKey: map['sharedKey'] == null ? null : map['sharedKey'] as String,
      useLocalAzureIpAddress: map['useLocalAzureIpAddress'] == null ? null : map['useLocalAzureIpAddress'] as bool,
      usePolicyBasedTrafficSelectors: map['usePolicyBasedTrafficSelectors'] == null ? null : map['usePolicyBasedTrafficSelectors'] as bool,
      vpnConnectionProtocolType: map['vpnConnectionProtocolType'] == null ? null : map['vpnConnectionProtocolType'] as String,
      vpnGatewayCustomBgpAddresses: map['vpnGatewayCustomBgpAddresses'] == null ? null : pulumi.Input.decodeList<GatewayCustomBgpIpAddressIpConfiguration>(map['vpnGatewayCustomBgpAddresses'], (value) => GatewayCustomBgpIpAddressIpConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      vpnLinkConnectionMode: map['vpnLinkConnectionMode'] == null ? null : map['vpnLinkConnectionMode'] as String,
      vpnSiteLink: map['vpnSiteLink'] == null ? null : SubResource.fromMap((map['vpnSiteLink'] as Map).cast<String, dynamic>()),
    );
  }
}

