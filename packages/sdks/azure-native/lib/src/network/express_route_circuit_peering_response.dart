// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_connection_response.dart';
import 'express_route_circuit_peering_config_response.dart';
import 'express_route_circuit_stats_response.dart';
import 'express_route_connection_id_response.dart';
import 'ipv6_express_route_circuit_peering_config_response.dart';
import 'peer_express_route_circuit_connection_response.dart';
import 'sub_resource_response.dart';

/// Peering in an ExpressRouteCircuit resource.
class ExpressRouteCircuitPeeringResponse {
  /// The Azure ASN.
  final pulumi.Input<int>? azureASN;
  /// The list of circuit connections associated with Azure Private Peering for this circuit.
  final pulumi.Input<List<ExpressRouteCircuitConnectionResponse>>? connections;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// The ExpressRoute connection.
  final pulumi.Input<ExpressRouteConnectionIdResponse>? expressRouteConnection;
  /// The GatewayManager Etag.
  final pulumi.Input<String>? gatewayManagerEtag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The IPv6 peering configuration.
  final pulumi.Input<Ipv6ExpressRouteCircuitPeeringConfigResponse>? ipv6PeeringConfig;
  /// Who was the last to modify the peering.
  final pulumi.Input<String> lastModifiedBy;
  /// The Microsoft peering configuration.
  final pulumi.Input<ExpressRouteCircuitPeeringConfigResponse>? microsoftPeeringConfig;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The peer ASN.
  final pulumi.Input<double>? peerASN;
  /// The list of peered circuit connections associated with Azure Private Peering for this circuit.
  final pulumi.Input<List<PeerExpressRouteCircuitConnectionResponse>> peeredConnections;
  /// The peering type.
  final pulumi.Input<String>? peeringType;
  /// The primary port.
  final pulumi.Input<String>? primaryAzurePort;
  /// The primary address prefix.
  final pulumi.Input<String>? primaryPeerAddressPrefix;
  /// The provisioning state of the express route circuit peering resource.
  final pulumi.Input<String> provisioningState;
  /// The reference to the RouteFilter resource.
  final pulumi.Input<SubResourceResponse>? routeFilter;
  /// The secondary port.
  final pulumi.Input<String>? secondaryAzurePort;
  /// The secondary address prefix.
  final pulumi.Input<String>? secondaryPeerAddressPrefix;
  /// The shared key.
  final pulumi.Input<String>? sharedKey;
  /// The peering state.
  final pulumi.Input<String>? state;
  /// The peering stats of express route circuit.
  final pulumi.Input<ExpressRouteCircuitStatsResponse>? stats;
  /// Type of the resource.
  final pulumi.Input<String> type;
  /// The VLAN ID.
  final pulumi.Input<int>? vlanId;

  /// Creates a new [ExpressRouteCircuitPeeringResponse].
  /// [azureASN] The Azure ASN.
  /// [connections] The list of circuit connections associated with Azure Private Peering for this circuit.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [expressRouteConnection] The ExpressRoute connection.
  /// [gatewayManagerEtag] The GatewayManager Etag.
  /// [id] Resource ID.
  /// [ipv6PeeringConfig] The IPv6 peering configuration.
  /// [lastModifiedBy] Who was the last to modify the peering.
  /// [microsoftPeeringConfig] The Microsoft peering configuration.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [peerASN] The peer ASN.
  /// [peeredConnections] The list of peered circuit connections associated with Azure Private Peering for this circuit.
  /// [peeringType] The peering type.
  /// [primaryAzurePort] The primary port.
  /// [primaryPeerAddressPrefix] The primary address prefix.
  /// [provisioningState] The provisioning state of the express route circuit peering resource.
  /// [routeFilter] The reference to the RouteFilter resource.
  /// [secondaryAzurePort] The secondary port.
  /// [secondaryPeerAddressPrefix] The secondary address prefix.
  /// [sharedKey] The shared key.
  /// [state] The peering state.
  /// [stats] The peering stats of express route circuit.
  /// [type] Type of the resource.
  /// [vlanId] The VLAN ID.
  ExpressRouteCircuitPeeringResponse({
    this.azureASN,
    this.connections,
    required this.etag,
    this.expressRouteConnection,
    this.gatewayManagerEtag,
    this.id,
    this.ipv6PeeringConfig,
    required this.lastModifiedBy,
    this.microsoftPeeringConfig,
    this.name,
    this.peerASN,
    required this.peeredConnections,
    this.peeringType,
    this.primaryAzurePort,
    this.primaryPeerAddressPrefix,
    required this.provisioningState,
    this.routeFilter,
    this.secondaryAzurePort,
    this.secondaryPeerAddressPrefix,
    this.sharedKey,
    this.state,
    this.stats,
    required this.type,
    this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureASN': ?azureASN,
      'connections': ?pulumi.Input.mapOptionalInputValue<List<ExpressRouteCircuitConnectionResponse>, List<Map<String, dynamic>>>(connections, (value) => pulumi.Input.encodeList<ExpressRouteCircuitConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': etag,
      'expressRouteConnection': ?pulumi.Input.mapOptionalInputValue<ExpressRouteConnectionIdResponse, Map<String, dynamic>>(expressRouteConnection, (value) => value.toMap()),
      'gatewayManagerEtag': ?gatewayManagerEtag,
      'id': ?id,
      'ipv6PeeringConfig': ?pulumi.Input.mapOptionalInputValue<Ipv6ExpressRouteCircuitPeeringConfigResponse, Map<String, dynamic>>(ipv6PeeringConfig, (value) => value.toMap()),
      'lastModifiedBy': lastModifiedBy,
      'microsoftPeeringConfig': ?pulumi.Input.mapOptionalInputValue<ExpressRouteCircuitPeeringConfigResponse, Map<String, dynamic>>(microsoftPeeringConfig, (value) => value.toMap()),
      'name': ?name,
      'peerASN': ?peerASN,
      'peeredConnections': pulumi.Input.mapInputValue<List<PeerExpressRouteCircuitConnectionResponse>, List<Map<String, dynamic>>>(peeredConnections, (value) => pulumi.Input.encodeList<PeerExpressRouteCircuitConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'peeringType': ?peeringType,
      'primaryAzurePort': ?primaryAzurePort,
      'primaryPeerAddressPrefix': ?primaryPeerAddressPrefix,
      'provisioningState': provisioningState,
      'routeFilter': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(routeFilter, (value) => value.toMap()),
      'secondaryAzurePort': ?secondaryAzurePort,
      'secondaryPeerAddressPrefix': ?secondaryPeerAddressPrefix,
      'sharedKey': ?sharedKey,
      'state': ?state,
      'stats': ?pulumi.Input.mapOptionalInputValue<ExpressRouteCircuitStatsResponse, Map<String, dynamic>>(stats, (value) => value.toMap()),
      'type': type,
      'vlanId': ?vlanId,
    };
  }

  factory ExpressRouteCircuitPeeringResponse.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitPeeringResponse(
      azureASN: map['azureASN'] == null ? null : (map['azureASN'] as int).input(),
      connections: map['connections'] == null ? null : (pulumi.Input.decodeList<ExpressRouteCircuitConnectionResponse>(map['connections'], (value) => ExpressRouteCircuitConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      etag: (map['etag'] as String).input(),
      expressRouteConnection: map['expressRouteConnection'] == null ? null : (ExpressRouteConnectionIdResponse.fromMap((map['expressRouteConnection'] as Map).cast<String, dynamic>())).input(),
      gatewayManagerEtag: map['gatewayManagerEtag'] == null ? null : (map['gatewayManagerEtag'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      ipv6PeeringConfig: map['ipv6PeeringConfig'] == null ? null : (Ipv6ExpressRouteCircuitPeeringConfigResponse.fromMap((map['ipv6PeeringConfig'] as Map).cast<String, dynamic>())).input(),
      lastModifiedBy: (map['lastModifiedBy'] as String).input(),
      microsoftPeeringConfig: map['microsoftPeeringConfig'] == null ? null : (ExpressRouteCircuitPeeringConfigResponse.fromMap((map['microsoftPeeringConfig'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      peerASN: map['peerASN'] == null ? null : (map['peerASN'] as double).input(),
      peeredConnections: (pulumi.Input.decodeList<PeerExpressRouteCircuitConnectionResponse>(map['peeredConnections'], (value) => PeerExpressRouteCircuitConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      peeringType: map['peeringType'] == null ? null : (map['peeringType'] as String).input(),
      primaryAzurePort: map['primaryAzurePort'] == null ? null : (map['primaryAzurePort'] as String).input(),
      primaryPeerAddressPrefix: map['primaryPeerAddressPrefix'] == null ? null : (map['primaryPeerAddressPrefix'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      routeFilter: map['routeFilter'] == null ? null : (SubResourceResponse.fromMap((map['routeFilter'] as Map).cast<String, dynamic>())).input(),
      secondaryAzurePort: map['secondaryAzurePort'] == null ? null : (map['secondaryAzurePort'] as String).input(),
      secondaryPeerAddressPrefix: map['secondaryPeerAddressPrefix'] == null ? null : (map['secondaryPeerAddressPrefix'] as String).input(),
      sharedKey: map['sharedKey'] == null ? null : (map['sharedKey'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      stats: map['stats'] == null ? null : (ExpressRouteCircuitStatsResponse.fromMap((map['stats'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      vlanId: map['vlanId'] == null ? null : (map['vlanId'] as int).input(),
    );
  }
}

