// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_custom_bgp_ip_address_ip_configuration.dart';
import 'ipsec_policy.dart';
import 'local_network_gateway_network.dart';
import 'sub_resource.dart';
import 'traffic_selector_policy.dart';
import 'virtual_network_gateway_network.dart';

/// {@template pulumi_network_virtual_network_gateway_connection_args_doc}
/// The set of arguments for VirtualNetworkGatewayConnection.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_network_gateway_connection_args_doc}
class VirtualNetworkGatewayConnectionArgs {
  /// The authorizationKey.
  final pulumi.Input<String>? authorizationKey;
  /// The connection mode for this connection.
  final pulumi.Input<String>? connectionMode;
  /// Connection protocol used for this connection.
  final pulumi.Input<String>? connectionProtocol;
  /// Gateway connection type.
  final pulumi.Input<String> connectionType;
  /// The dead peer detection timeout of this connection in seconds.
  final pulumi.Input<int>? dpdTimeoutSeconds;
  /// List of egress NatRules.
  final pulumi.Input<List<SubResource>>? egressNatRules;
  /// EnableBgp flag.
  final pulumi.Input<bool>? enableBgp;
  /// Bypass the ExpressRoute gateway when accessing private-links. ExpressRoute FastPath (expressRouteGatewayBypass) must be enabled.
  final pulumi.Input<bool>? enablePrivateLinkFastPath;
  /// Bypass ExpressRoute Gateway for data forwarding.
  final pulumi.Input<bool>? expressRouteGatewayBypass;
  /// GatewayCustomBgpIpAddresses to be used for virtual network gateway Connection.
  final pulumi.Input<List<GatewayCustomBgpIpAddressIpConfiguration>>? gatewayCustomBgpIpAddresses;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// List of ingress NatRules.
  final pulumi.Input<List<SubResource>>? ingressNatRules;
  /// The IPSec Policies to be considered by this connection.
  final pulumi.Input<List<IpsecPolicy>>? ipsecPolicies;
  /// The reference to local network gateway resource.
  final pulumi.Input<LocalNetworkGatewayNetwork>? localNetworkGateway2;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The reference to peerings resource.
  final pulumi.Input<SubResource>? peer;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The routing weight.
  final pulumi.Input<int>? routingWeight;
  /// The IPSec shared key.
  final pulumi.Input<String>? sharedKey;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Traffic Selector Policies to be considered by this connection.
  final pulumi.Input<List<TrafficSelectorPolicy>>? trafficSelectorPolicies;
  /// Use private local Azure IP for the connection.
  final pulumi.Input<bool>? useLocalAzureIpAddress;
  /// Enable policy-based traffic selectors.
  final pulumi.Input<bool>? usePolicyBasedTrafficSelectors;
  /// The reference to virtual network gateway resource.
  final pulumi.Input<VirtualNetworkGatewayNetwork> virtualNetworkGateway1;
  /// The reference to virtual network gateway resource.
  final pulumi.Input<VirtualNetworkGatewayNetwork>? virtualNetworkGateway2;
  /// The name of the virtual network gateway connection.
  final pulumi.Input<String>? virtualNetworkGatewayConnectionName;

  /// Creates a new [VirtualNetworkGatewayConnectionArgs].
  /// [authorizationKey] The authorizationKey.
  /// [connectionMode] The connection mode for this connection.
  /// [connectionProtocol] Connection protocol used for this connection.
  /// [connectionType] Gateway connection type.
  /// [dpdTimeoutSeconds] The dead peer detection timeout of this connection in seconds.
  /// [egressNatRules] List of egress NatRules.
  /// [enableBgp] EnableBgp flag.
  /// [enablePrivateLinkFastPath] Bypass the ExpressRoute gateway when accessing private-links. ExpressRoute FastPath (expressRouteGatewayBypass) must be enabled.
  /// [expressRouteGatewayBypass] Bypass ExpressRoute Gateway for data forwarding.
  /// [gatewayCustomBgpIpAddresses] GatewayCustomBgpIpAddresses to be used for virtual network gateway Connection.
  /// [id] Resource ID.
  /// [ingressNatRules] List of ingress NatRules.
  /// [ipsecPolicies] The IPSec Policies to be considered by this connection.
  /// [localNetworkGateway2] The reference to local network gateway resource.
  /// [location] Resource location.
  /// [peer] The reference to peerings resource.
  /// [resourceGroupName] The name of the resource group.
  /// [routingWeight] The routing weight.
  /// [sharedKey] The IPSec shared key.
  /// [tags] Resource tags.
  /// [trafficSelectorPolicies] The Traffic Selector Policies to be considered by this connection.
  /// [useLocalAzureIpAddress] Use private local Azure IP for the connection.
  /// [usePolicyBasedTrafficSelectors] Enable policy-based traffic selectors.
  /// [virtualNetworkGateway1] The reference to virtual network gateway resource.
  /// [virtualNetworkGateway2] The reference to virtual network gateway resource.
  /// [virtualNetworkGatewayConnectionName] The name of the virtual network gateway connection.
  VirtualNetworkGatewayConnectionArgs({
    String? authorizationKey,
    String? connectionMode,
    String? connectionProtocol,
    required String connectionType,
    int? dpdTimeoutSeconds,
    List<SubResource>? egressNatRules,
    bool? enableBgp,
    bool? enablePrivateLinkFastPath,
    bool? expressRouteGatewayBypass,
    List<GatewayCustomBgpIpAddressIpConfiguration>? gatewayCustomBgpIpAddresses,
    String? id,
    List<SubResource>? ingressNatRules,
    List<IpsecPolicy>? ipsecPolicies,
    LocalNetworkGatewayNetwork? localNetworkGateway2,
    String? location,
    SubResource? peer,
    required String resourceGroupName,
    int? routingWeight,
    String? sharedKey,
    Map<String, String>? tags,
    List<TrafficSelectorPolicy>? trafficSelectorPolicies,
    bool? useLocalAzureIpAddress,
    bool? usePolicyBasedTrafficSelectors,
    required VirtualNetworkGatewayNetwork virtualNetworkGateway1,
    VirtualNetworkGatewayNetwork? virtualNetworkGateway2,
    String? virtualNetworkGatewayConnectionName,
  }) :
      authorizationKey = pulumi.Input.asOptionalInput<String>(authorizationKey),
      connectionMode = pulumi.Input.asOptionalInput<String>(connectionMode),
      connectionProtocol = pulumi.Input.asOptionalInput<String>(connectionProtocol),
      connectionType = pulumi.Input.asInput<String>(connectionType),
      dpdTimeoutSeconds = pulumi.Input.asOptionalInput<int>(dpdTimeoutSeconds),
      egressNatRules = pulumi.Input.asOptionalInput<List<SubResource>>(egressNatRules),
      enableBgp = pulumi.Input.asOptionalInput<bool>(enableBgp),
      enablePrivateLinkFastPath = pulumi.Input.asOptionalInput<bool>(enablePrivateLinkFastPath),
      expressRouteGatewayBypass = pulumi.Input.asOptionalInput<bool>(expressRouteGatewayBypass),
      gatewayCustomBgpIpAddresses = pulumi.Input.asOptionalInput<List<GatewayCustomBgpIpAddressIpConfiguration>>(gatewayCustomBgpIpAddresses),
      id = pulumi.Input.asOptionalInput<String>(id),
      ingressNatRules = pulumi.Input.asOptionalInput<List<SubResource>>(ingressNatRules),
      ipsecPolicies = pulumi.Input.asOptionalInput<List<IpsecPolicy>>(ipsecPolicies),
      localNetworkGateway2 = pulumi.Input.asOptionalInput<LocalNetworkGatewayNetwork>(localNetworkGateway2),
      location = pulumi.Input.asOptionalInput<String>(location),
      peer = pulumi.Input.asOptionalInput<SubResource>(peer),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routingWeight = pulumi.Input.asOptionalInput<int>(routingWeight),
      sharedKey = pulumi.Input.asOptionalInput<String>(sharedKey),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trafficSelectorPolicies = pulumi.Input.asOptionalInput<List<TrafficSelectorPolicy>>(trafficSelectorPolicies),
      useLocalAzureIpAddress = pulumi.Input.asOptionalInput<bool>(useLocalAzureIpAddress),
      usePolicyBasedTrafficSelectors = pulumi.Input.asOptionalInput<bool>(usePolicyBasedTrafficSelectors),
      virtualNetworkGateway1 = pulumi.Input.asInput<VirtualNetworkGatewayNetwork>(virtualNetworkGateway1),
      virtualNetworkGateway2 = pulumi.Input.asOptionalInput<VirtualNetworkGatewayNetwork>(virtualNetworkGateway2),
      virtualNetworkGatewayConnectionName = pulumi.Input.asOptionalInput<String>(virtualNetworkGatewayConnectionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationKey': ?authorizationKey,
      'connectionMode': ?connectionMode,
      'connectionProtocol': ?connectionProtocol,
      'connectionType': connectionType,
      'dpdTimeoutSeconds': ?dpdTimeoutSeconds,
      'egressNatRules': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(egressNatRules, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableBgp': ?enableBgp,
      'enablePrivateLinkFastPath': ?enablePrivateLinkFastPath,
      'expressRouteGatewayBypass': ?expressRouteGatewayBypass,
      'gatewayCustomBgpIpAddresses': ?pulumi.Input.mapOptionalInputValue<List<GatewayCustomBgpIpAddressIpConfiguration>, List<Map<String, dynamic>>>(gatewayCustomBgpIpAddresses, (value) => pulumi.Input.encodeList<GatewayCustomBgpIpAddressIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'ingressNatRules': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(ingressNatRules, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipsecPolicies': ?pulumi.Input.mapOptionalInputValue<List<IpsecPolicy>, List<Map<String, dynamic>>>(ipsecPolicies, (value) => pulumi.Input.encodeList<IpsecPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localNetworkGateway2': ?localNetworkGateway2,
      'location': ?location,
      'peer': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(peer, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'routingWeight': ?routingWeight,
      'sharedKey': ?sharedKey,
      'tags': ?tags,
      'trafficSelectorPolicies': ?pulumi.Input.mapOptionalInputValue<List<TrafficSelectorPolicy>, List<Map<String, dynamic>>>(trafficSelectorPolicies, (value) => pulumi.Input.encodeList<TrafficSelectorPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'useLocalAzureIpAddress': ?useLocalAzureIpAddress,
      'usePolicyBasedTrafficSelectors': ?usePolicyBasedTrafficSelectors,
      'virtualNetworkGateway1': virtualNetworkGateway1,
      'virtualNetworkGateway2': ?virtualNetworkGateway2,
      'virtualNetworkGatewayConnectionName': ?virtualNetworkGatewayConnectionName,
    };
  }

  factory VirtualNetworkGatewayConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayConnectionArgs(
      authorizationKey: map['authorizationKey'] == null ? null : map['authorizationKey'] as String,
      connectionMode: map['connectionMode'] == null ? null : map['connectionMode'] as String,
      connectionProtocol: map['connectionProtocol'] == null ? null : map['connectionProtocol'] as String,
      connectionType: map['connectionType'] as String,
      dpdTimeoutSeconds: map['dpdTimeoutSeconds'] == null ? null : map['dpdTimeoutSeconds'] as int,
      egressNatRules: map['egressNatRules'] == null ? null : pulumi.Input.decodeList<SubResource>(map['egressNatRules'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>())),
      enableBgp: map['enableBgp'] == null ? null : map['enableBgp'] as bool,
      enablePrivateLinkFastPath: map['enablePrivateLinkFastPath'] == null ? null : map['enablePrivateLinkFastPath'] as bool,
      expressRouteGatewayBypass: map['expressRouteGatewayBypass'] == null ? null : map['expressRouteGatewayBypass'] as bool,
      gatewayCustomBgpIpAddresses: map['gatewayCustomBgpIpAddresses'] == null ? null : pulumi.Input.decodeList<GatewayCustomBgpIpAddressIpConfiguration>(map['gatewayCustomBgpIpAddresses'], (value) => GatewayCustomBgpIpAddressIpConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      ingressNatRules: map['ingressNatRules'] == null ? null : pulumi.Input.decodeList<SubResource>(map['ingressNatRules'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>())),
      ipsecPolicies: map['ipsecPolicies'] == null ? null : pulumi.Input.decodeList<IpsecPolicy>(map['ipsecPolicies'], (value) => IpsecPolicy.fromMap((value as Map).cast<String, dynamic>())),
      localNetworkGateway2: map['localNetworkGateway2'] == null ? null : map['localNetworkGateway2'] as LocalNetworkGatewayNetwork,
      location: map['location'] == null ? null : map['location'] as String,
      peer: map['peer'] == null ? null : SubResource.fromMap((map['peer'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      routingWeight: map['routingWeight'] == null ? null : map['routingWeight'] as int,
      sharedKey: map['sharedKey'] == null ? null : map['sharedKey'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      trafficSelectorPolicies: map['trafficSelectorPolicies'] == null ? null : pulumi.Input.decodeList<TrafficSelectorPolicy>(map['trafficSelectorPolicies'], (value) => TrafficSelectorPolicy.fromMap((value as Map).cast<String, dynamic>())),
      useLocalAzureIpAddress: map['useLocalAzureIpAddress'] == null ? null : map['useLocalAzureIpAddress'] as bool,
      usePolicyBasedTrafficSelectors: map['usePolicyBasedTrafficSelectors'] == null ? null : map['usePolicyBasedTrafficSelectors'] as bool,
      virtualNetworkGateway1: map['virtualNetworkGateway1'] as VirtualNetworkGatewayNetwork,
      virtualNetworkGateway2: map['virtualNetworkGateway2'] == null ? null : map['virtualNetworkGateway2'] as VirtualNetworkGatewayNetwork,
      virtualNetworkGatewayConnectionName: map['virtualNetworkGatewayConnectionName'] == null ? null : map['virtualNetworkGatewayConnectionName'] as String,
    );
  }
}

