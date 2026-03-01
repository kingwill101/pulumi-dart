// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_connection_network.dart';
import 'express_route_circuit_peering_config.dart';
import 'express_route_circuit_stats.dart';
import 'ipv6_express_route_circuit_peering_config.dart';
import 'sub_resource.dart';

/// {@template pulumi_network_express_route_circuit_peering_args_doc}
/// The set of arguments for ExpressRouteCircuitPeering.
/// {@endtemplate}
/// {@macro pulumi_network_express_route_circuit_peering_args_doc}
class ExpressRouteCircuitPeeringArgs {
  /// The Azure ASN.
  final pulumi.Input<int>? azureASN;
  /// The name of the express route circuit.
  final pulumi.Input<String> circuitName;
  /// The list of circuit connections associated with Azure Private Peering for this circuit.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<ExpressRouteCircuitConnectionNetwork>>? connections;
  /// The GatewayManager Etag.
  final pulumi.Input<String>? gatewayManagerEtag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The IPv6 peering configuration.
  final pulumi.Input<Ipv6ExpressRouteCircuitPeeringConfig>? ipv6PeeringConfig;
  /// The Microsoft peering configuration.
  final pulumi.Input<ExpressRouteCircuitPeeringConfig>? microsoftPeeringConfig;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The peer ASN.
  final pulumi.Input<double>? peerASN;
  /// The name of the peering.
  final pulumi.Input<String>? peeringName;
  /// The peering type.
  final pulumi.Input<String>? peeringType;
  /// The primary port.
  final pulumi.Input<String>? primaryAzurePort;
  /// The primary address prefix.
  final pulumi.Input<String>? primaryPeerAddressPrefix;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The reference to the RouteFilter resource.
  final pulumi.Input<SubResource>? routeFilter;
  /// The secondary port.
  final pulumi.Input<String>? secondaryAzurePort;
  /// The secondary address prefix.
  final pulumi.Input<String>? secondaryPeerAddressPrefix;
  /// The shared key.
  final pulumi.Input<String>? sharedKey;
  /// The peering state.
  final pulumi.Input<String>? state;
  /// The peering stats of express route circuit.
  final pulumi.Input<ExpressRouteCircuitStats>? stats;
  /// The VLAN ID.
  final pulumi.Input<int>? vlanId;

  /// Creates a new [ExpressRouteCircuitPeeringArgs].
  /// [azureASN] The Azure ASN.
  /// [circuitName] The name of the express route circuit.
  /// [connections] The list of circuit connections associated with Azure Private Peering for this circuit.
  /// [gatewayManagerEtag] The GatewayManager Etag.
  /// [id] Resource ID.
  /// [ipv6PeeringConfig] The IPv6 peering configuration.
  /// [microsoftPeeringConfig] The Microsoft peering configuration.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [peerASN] The peer ASN.
  /// [peeringName] The name of the peering.
  /// [peeringType] The peering type.
  /// [primaryAzurePort] The primary port.
  /// [primaryPeerAddressPrefix] The primary address prefix.
  /// [resourceGroupName] The name of the resource group.
  /// [routeFilter] The reference to the RouteFilter resource.
  /// [secondaryAzurePort] The secondary port.
  /// [secondaryPeerAddressPrefix] The secondary address prefix.
  /// [sharedKey] The shared key.
  /// [state] The peering state.
  /// [stats] The peering stats of express route circuit.
  /// [vlanId] The VLAN ID.
  ExpressRouteCircuitPeeringArgs({
    int? azureASN,
    required String circuitName,
    List<ExpressRouteCircuitConnectionNetwork>? connections,
    String? gatewayManagerEtag,
    String? id,
    Ipv6ExpressRouteCircuitPeeringConfig? ipv6PeeringConfig,
    ExpressRouteCircuitPeeringConfig? microsoftPeeringConfig,
    String? name,
    double? peerASN,
    String? peeringName,
    String? peeringType,
    String? primaryAzurePort,
    String? primaryPeerAddressPrefix,
    required String resourceGroupName,
    SubResource? routeFilter,
    String? secondaryAzurePort,
    String? secondaryPeerAddressPrefix,
    String? sharedKey,
    String? state,
    ExpressRouteCircuitStats? stats,
    int? vlanId,
  }) :
      azureASN = pulumi.Input.asOptionalInput<int>(azureASN),
      circuitName = pulumi.Input.asInput<String>(circuitName),
      connections = pulumi.Input.asOptionalInput<List<ExpressRouteCircuitConnectionNetwork>>(connections),
      gatewayManagerEtag = pulumi.Input.asOptionalInput<String>(gatewayManagerEtag),
      id = pulumi.Input.asOptionalInput<String>(id),
      ipv6PeeringConfig = pulumi.Input.asOptionalInput<Ipv6ExpressRouteCircuitPeeringConfig>(ipv6PeeringConfig),
      microsoftPeeringConfig = pulumi.Input.asOptionalInput<ExpressRouteCircuitPeeringConfig>(microsoftPeeringConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      peerASN = pulumi.Input.asOptionalInput<double>(peerASN),
      peeringName = pulumi.Input.asOptionalInput<String>(peeringName),
      peeringType = pulumi.Input.asOptionalInput<String>(peeringType),
      primaryAzurePort = pulumi.Input.asOptionalInput<String>(primaryAzurePort),
      primaryPeerAddressPrefix = pulumi.Input.asOptionalInput<String>(primaryPeerAddressPrefix),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routeFilter = pulumi.Input.asOptionalInput<SubResource>(routeFilter),
      secondaryAzurePort = pulumi.Input.asOptionalInput<String>(secondaryAzurePort),
      secondaryPeerAddressPrefix = pulumi.Input.asOptionalInput<String>(secondaryPeerAddressPrefix),
      sharedKey = pulumi.Input.asOptionalInput<String>(sharedKey),
      state = pulumi.Input.asOptionalInput<String>(state),
      stats = pulumi.Input.asOptionalInput<ExpressRouteCircuitStats>(stats),
      vlanId = pulumi.Input.asOptionalInput<int>(vlanId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureASN': ?azureASN,
      'circuitName': circuitName,
      'connections': ?connections,
      'gatewayManagerEtag': ?gatewayManagerEtag,
      'id': ?id,
      'ipv6PeeringConfig': ?pulumi.Input.mapOptionalInputValue<Ipv6ExpressRouteCircuitPeeringConfig, Map<String, dynamic>>(ipv6PeeringConfig, (value) => value.toMap()),
      'microsoftPeeringConfig': ?pulumi.Input.mapOptionalInputValue<ExpressRouteCircuitPeeringConfig, Map<String, dynamic>>(microsoftPeeringConfig, (value) => value.toMap()),
      'name': ?name,
      'peerASN': ?peerASN,
      'peeringName': ?peeringName,
      'peeringType': ?peeringType,
      'primaryAzurePort': ?primaryAzurePort,
      'primaryPeerAddressPrefix': ?primaryPeerAddressPrefix,
      'resourceGroupName': resourceGroupName,
      'routeFilter': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(routeFilter, (value) => value.toMap()),
      'secondaryAzurePort': ?secondaryAzurePort,
      'secondaryPeerAddressPrefix': ?secondaryPeerAddressPrefix,
      'sharedKey': ?sharedKey,
      'state': ?state,
      'stats': ?pulumi.Input.mapOptionalInputValue<ExpressRouteCircuitStats, Map<String, dynamic>>(stats, (value) => value.toMap()),
      'vlanId': ?vlanId,
    };
  }

  factory ExpressRouteCircuitPeeringArgs.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitPeeringArgs(
      azureASN: map['azureASN'] == null ? null : map['azureASN'] as int,
      circuitName: map['circuitName'] as String,
      connections: map['connections'] == null ? null : (map['connections'] as List).cast<ExpressRouteCircuitConnectionNetwork>(),
      gatewayManagerEtag: map['gatewayManagerEtag'] == null ? null : map['gatewayManagerEtag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      ipv6PeeringConfig: map['ipv6PeeringConfig'] == null ? null : Ipv6ExpressRouteCircuitPeeringConfig.fromMap((map['ipv6PeeringConfig'] as Map).cast<String, dynamic>()),
      microsoftPeeringConfig: map['microsoftPeeringConfig'] == null ? null : ExpressRouteCircuitPeeringConfig.fromMap((map['microsoftPeeringConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      peerASN: map['peerASN'] == null ? null : map['peerASN'] as double,
      peeringName: map['peeringName'] == null ? null : map['peeringName'] as String,
      peeringType: map['peeringType'] == null ? null : map['peeringType'] as String,
      primaryAzurePort: map['primaryAzurePort'] == null ? null : map['primaryAzurePort'] as String,
      primaryPeerAddressPrefix: map['primaryPeerAddressPrefix'] == null ? null : map['primaryPeerAddressPrefix'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      routeFilter: map['routeFilter'] == null ? null : SubResource.fromMap((map['routeFilter'] as Map).cast<String, dynamic>()),
      secondaryAzurePort: map['secondaryAzurePort'] == null ? null : map['secondaryAzurePort'] as String,
      secondaryPeerAddressPrefix: map['secondaryPeerAddressPrefix'] == null ? null : map['secondaryPeerAddressPrefix'] as String,
      sharedKey: map['sharedKey'] == null ? null : map['sharedKey'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      stats: map['stats'] == null ? null : ExpressRouteCircuitStats.fromMap((map['stats'] as Map).cast<String, dynamic>()),
      vlanId: map['vlanId'] == null ? null : map['vlanId'] as int,
    );
  }
}

