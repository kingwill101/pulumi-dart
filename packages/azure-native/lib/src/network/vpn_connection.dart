// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipsec_policy.dart';
import 'routing_configuration.dart';
import 'sub_resource.dart';
import 'traffic_selector_policy.dart';
import 'vpn_site_link_connection.dart';

/// VpnConnection Resource.
class VpnConnection {
  /// Expected bandwidth in MBPS.
  final int? connectionBandwidth;
  /// DPD timeout in seconds for vpn connection.
  final int? dpdTimeoutSeconds;
  /// EnableBgp flag.
  final bool? enableBgp;
  /// Enable internet security.
  final bool? enableInternetSecurity;
  /// EnableBgp flag.
  final bool? enableRateLimiting;
  /// Resource ID.
  final String? id;
  /// The IPSec Policies to be considered by this connection.
  final List<IpsecPolicy>? ipsecPolicies;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Id of the connected vpn site.
  final SubResource? remoteVpnSite;
  /// The Routing Configuration indicating the associated and propagated route tables on this connection.
  final RoutingConfiguration? routingConfiguration;
  /// Routing weight for vpn connection.
  final int? routingWeight;
  /// SharedKey for the vpn connection.
  final String? sharedKey;
  /// The Traffic Selector Policies to be considered by this connection.
  final List<TrafficSelectorPolicy>? trafficSelectorPolicies;
  /// Use local azure ip to initiate connection.
  final bool? useLocalAzureIpAddress;
  /// Enable policy-based traffic selectors.
  final bool? usePolicyBasedTrafficSelectors;
  /// Connection protocol used for this connection.
  final String? vpnConnectionProtocolType;
  /// List of all vpn site link connections to the gateway.
  final List<VpnSiteLinkConnection>? vpnLinkConnections;

  /// Creates a new [VpnConnection].
  /// [connectionBandwidth] Expected bandwidth in MBPS.
  /// [dpdTimeoutSeconds] DPD timeout in seconds for vpn connection.
  /// [enableBgp] EnableBgp flag.
  /// [enableInternetSecurity] Enable internet security.
  /// [enableRateLimiting] EnableBgp flag.
  /// [id] Resource ID.
  /// [ipsecPolicies] The IPSec Policies to be considered by this connection.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [remoteVpnSite] Id of the connected vpn site.
  /// [routingConfiguration] The Routing Configuration indicating the associated and propagated route tables on this connection.
  /// [routingWeight] Routing weight for vpn connection.
  /// [sharedKey] SharedKey for the vpn connection.
  /// [trafficSelectorPolicies] The Traffic Selector Policies to be considered by this connection.
  /// [useLocalAzureIpAddress] Use local azure ip to initiate connection.
  /// [usePolicyBasedTrafficSelectors] Enable policy-based traffic selectors.
  /// [vpnConnectionProtocolType] Connection protocol used for this connection.
  /// [vpnLinkConnections] List of all vpn site link connections to the gateway.
  VpnConnection({
    this.connectionBandwidth,
    this.dpdTimeoutSeconds,
    this.enableBgp,
    this.enableInternetSecurity,
    this.enableRateLimiting,
    this.id,
    this.ipsecPolicies,
    this.name,
    this.remoteVpnSite,
    this.routingConfiguration,
    this.routingWeight,
    this.sharedKey,
    this.trafficSelectorPolicies,
    this.useLocalAzureIpAddress,
    this.usePolicyBasedTrafficSelectors,
    this.vpnConnectionProtocolType,
    this.vpnLinkConnections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionBandwidth': ?connectionBandwidth,
      'dpdTimeoutSeconds': ?dpdTimeoutSeconds,
      'enableBgp': ?enableBgp,
      'enableInternetSecurity': ?enableInternetSecurity,
      'enableRateLimiting': ?enableRateLimiting,
      'id': ?id,
      'ipsecPolicies': ?ipsecPolicies == null ? null : pulumi.Input.encodeList<IpsecPolicy, Map<String, dynamic>>(ipsecPolicies!, (value) => value.toMap()),
      'name': ?name,
      'remoteVpnSite': ?remoteVpnSite == null ? null : remoteVpnSite!.toMap(),
      'routingConfiguration': ?routingConfiguration == null ? null : routingConfiguration!.toMap(),
      'routingWeight': ?routingWeight,
      'sharedKey': ?sharedKey,
      'trafficSelectorPolicies': ?trafficSelectorPolicies == null ? null : pulumi.Input.encodeList<TrafficSelectorPolicy, Map<String, dynamic>>(trafficSelectorPolicies!, (value) => value.toMap()),
      'useLocalAzureIpAddress': ?useLocalAzureIpAddress,
      'usePolicyBasedTrafficSelectors': ?usePolicyBasedTrafficSelectors,
      'vpnConnectionProtocolType': ?vpnConnectionProtocolType,
      'vpnLinkConnections': ?vpnLinkConnections == null ? null : pulumi.Input.encodeList<VpnSiteLinkConnection, Map<String, dynamic>>(vpnLinkConnections!, (value) => value.toMap()),
    };
  }

  factory VpnConnection.fromMap(Map<String, dynamic> map) {
    return VpnConnection(
      connectionBandwidth: map['connectionBandwidth'] == null ? null : map['connectionBandwidth'] as int,
      dpdTimeoutSeconds: map['dpdTimeoutSeconds'] == null ? null : map['dpdTimeoutSeconds'] as int,
      enableBgp: map['enableBgp'] == null ? null : map['enableBgp'] as bool,
      enableInternetSecurity: map['enableInternetSecurity'] == null ? null : map['enableInternetSecurity'] as bool,
      enableRateLimiting: map['enableRateLimiting'] == null ? null : map['enableRateLimiting'] as bool,
      id: map['id'] == null ? null : map['id'] as String,
      ipsecPolicies: map['ipsecPolicies'] == null ? null : pulumi.Input.decodeList<IpsecPolicy>(map['ipsecPolicies'], (value) => IpsecPolicy.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      remoteVpnSite: map['remoteVpnSite'] == null ? null : SubResource.fromMap((map['remoteVpnSite'] as Map).cast<String, dynamic>()),
      routingConfiguration: map['routingConfiguration'] == null ? null : RoutingConfiguration.fromMap((map['routingConfiguration'] as Map).cast<String, dynamic>()),
      routingWeight: map['routingWeight'] == null ? null : map['routingWeight'] as int,
      sharedKey: map['sharedKey'] == null ? null : map['sharedKey'] as String,
      trafficSelectorPolicies: map['trafficSelectorPolicies'] == null ? null : pulumi.Input.decodeList<TrafficSelectorPolicy>(map['trafficSelectorPolicies'], (value) => TrafficSelectorPolicy.fromMap((value as Map).cast<String, dynamic>())),
      useLocalAzureIpAddress: map['useLocalAzureIpAddress'] == null ? null : map['useLocalAzureIpAddress'] as bool,
      usePolicyBasedTrafficSelectors: map['usePolicyBasedTrafficSelectors'] == null ? null : map['usePolicyBasedTrafficSelectors'] as bool,
      vpnConnectionProtocolType: map['vpnConnectionProtocolType'] == null ? null : map['vpnConnectionProtocolType'] as String,
      vpnLinkConnections: map['vpnLinkConnections'] == null ? null : pulumi.Input.decodeList<VpnSiteLinkConnection>(map['vpnLinkConnections'], (value) => VpnSiteLinkConnection.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

