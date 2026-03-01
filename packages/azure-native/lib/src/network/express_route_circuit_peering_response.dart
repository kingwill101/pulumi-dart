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
  final int? azureASN;
  /// The list of circuit connections associated with Azure Private Peering for this circuit.
  final List<ExpressRouteCircuitConnectionResponse>? connections;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// The ExpressRoute connection.
  final ExpressRouteConnectionIdResponse? expressRouteConnection;
  /// The GatewayManager Etag.
  final String? gatewayManagerEtag;
  /// Resource ID.
  final String? id;
  /// The IPv6 peering configuration.
  final Ipv6ExpressRouteCircuitPeeringConfigResponse? ipv6PeeringConfig;
  /// Who was the last to modify the peering.
  final String lastModifiedBy;
  /// The Microsoft peering configuration.
  final ExpressRouteCircuitPeeringConfigResponse? microsoftPeeringConfig;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The peer ASN.
  final double? peerASN;
  /// The list of peered circuit connections associated with Azure Private Peering for this circuit.
  final List<PeerExpressRouteCircuitConnectionResponse> peeredConnections;
  /// The peering type.
  final String? peeringType;
  /// The primary port.
  final String? primaryAzurePort;
  /// The primary address prefix.
  final String? primaryPeerAddressPrefix;
  /// The provisioning state of the express route circuit peering resource.
  final String provisioningState;
  /// The reference to the RouteFilter resource.
  final SubResourceResponse? routeFilter;
  /// The secondary port.
  final String? secondaryAzurePort;
  /// The secondary address prefix.
  final String? secondaryPeerAddressPrefix;
  /// The shared key.
  final String? sharedKey;
  /// The peering state.
  final String? state;
  /// The peering stats of express route circuit.
  final ExpressRouteCircuitStatsResponse? stats;
  /// Type of the resource.
  final String type;
  /// The VLAN ID.
  final int? vlanId;

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
      'connections': ?connections == null ? null : pulumi.Input.encodeList<ExpressRouteCircuitConnectionResponse, Map<String, dynamic>>(connections!, (value) => value.toMap()),
      'etag': etag,
      'expressRouteConnection': ?expressRouteConnection == null ? null : expressRouteConnection!.toMap(),
      'gatewayManagerEtag': ?gatewayManagerEtag,
      'id': ?id,
      'ipv6PeeringConfig': ?ipv6PeeringConfig == null ? null : ipv6PeeringConfig!.toMap(),
      'lastModifiedBy': lastModifiedBy,
      'microsoftPeeringConfig': ?microsoftPeeringConfig == null ? null : microsoftPeeringConfig!.toMap(),
      'name': ?name,
      'peerASN': ?peerASN,
      'peeredConnections': pulumi.Input.encodeList<PeerExpressRouteCircuitConnectionResponse, Map<String, dynamic>>(peeredConnections, (value) => value.toMap()),
      'peeringType': ?peeringType,
      'primaryAzurePort': ?primaryAzurePort,
      'primaryPeerAddressPrefix': ?primaryPeerAddressPrefix,
      'provisioningState': provisioningState,
      'routeFilter': ?routeFilter == null ? null : routeFilter!.toMap(),
      'secondaryAzurePort': ?secondaryAzurePort,
      'secondaryPeerAddressPrefix': ?secondaryPeerAddressPrefix,
      'sharedKey': ?sharedKey,
      'state': ?state,
      'stats': ?stats == null ? null : stats!.toMap(),
      'type': type,
      'vlanId': ?vlanId,
    };
  }

  factory ExpressRouteCircuitPeeringResponse.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitPeeringResponse(
      azureASN: map['azureASN'] == null ? null : map['azureASN'] as int,
      connections: map['connections'] == null ? null : pulumi.Input.decodeList<ExpressRouteCircuitConnectionResponse>(map['connections'], (value) => ExpressRouteCircuitConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      etag: map['etag'] as String,
      expressRouteConnection: map['expressRouteConnection'] == null ? null : ExpressRouteConnectionIdResponse.fromMap((map['expressRouteConnection'] as Map).cast<String, dynamic>()),
      gatewayManagerEtag: map['gatewayManagerEtag'] == null ? null : map['gatewayManagerEtag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      ipv6PeeringConfig: map['ipv6PeeringConfig'] == null ? null : Ipv6ExpressRouteCircuitPeeringConfigResponse.fromMap((map['ipv6PeeringConfig'] as Map).cast<String, dynamic>()),
      lastModifiedBy: map['lastModifiedBy'] as String,
      microsoftPeeringConfig: map['microsoftPeeringConfig'] == null ? null : ExpressRouteCircuitPeeringConfigResponse.fromMap((map['microsoftPeeringConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      peerASN: map['peerASN'] == null ? null : map['peerASN'] as double,
      peeredConnections: pulumi.Input.decodeList<PeerExpressRouteCircuitConnectionResponse>(map['peeredConnections'], (value) => PeerExpressRouteCircuitConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      peeringType: map['peeringType'] == null ? null : map['peeringType'] as String,
      primaryAzurePort: map['primaryAzurePort'] == null ? null : map['primaryAzurePort'] as String,
      primaryPeerAddressPrefix: map['primaryPeerAddressPrefix'] == null ? null : map['primaryPeerAddressPrefix'] as String,
      provisioningState: map['provisioningState'] as String,
      routeFilter: map['routeFilter'] == null ? null : SubResourceResponse.fromMap((map['routeFilter'] as Map).cast<String, dynamic>()),
      secondaryAzurePort: map['secondaryAzurePort'] == null ? null : map['secondaryAzurePort'] as String,
      secondaryPeerAddressPrefix: map['secondaryPeerAddressPrefix'] == null ? null : map['secondaryPeerAddressPrefix'] as String,
      sharedKey: map['sharedKey'] == null ? null : map['sharedKey'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      stats: map['stats'] == null ? null : ExpressRouteCircuitStatsResponse.fromMap((map['stats'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      vlanId: map['vlanId'] == null ? null : map['vlanId'] as int,
    );
  }
}

