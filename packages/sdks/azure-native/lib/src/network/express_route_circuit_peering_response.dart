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
  final pulumi.Input<int?>? azureASN;
  /// The list of circuit connections associated with Azure Private Peering for this circuit.
  final pulumi.Input<List<ExpressRouteCircuitConnectionResponse>?>? connections;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// The ExpressRoute connection.
  final pulumi.Input<ExpressRouteConnectionIdResponse?>? expressRouteConnection;
  /// The GatewayManager Etag.
  final pulumi.Input<String?>? gatewayManagerEtag;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// The IPv6 peering configuration.
  final pulumi.Input<Ipv6ExpressRouteCircuitPeeringConfigResponse?>? ipv6PeeringConfig;
  /// Who was the last to modify the peering.
  final pulumi.Input<String> lastModifiedBy;
  /// The Microsoft peering configuration.
  final pulumi.Input<ExpressRouteCircuitPeeringConfigResponse?>? microsoftPeeringConfig;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String?>? name;
  /// The peer ASN.
  final pulumi.Input<double?>? peerASN;
  /// The list of peered circuit connections associated with Azure Private Peering for this circuit.
  final pulumi.Input<List<PeerExpressRouteCircuitConnectionResponse>> peeredConnections;
  /// The peering type.
  final pulumi.Input<String?>? peeringType;
  /// The primary port.
  final pulumi.Input<String?>? primaryAzurePort;
  /// The primary address prefix.
  final pulumi.Input<String?>? primaryPeerAddressPrefix;
  /// The provisioning state of the express route circuit peering resource.
  final pulumi.Input<String> provisioningState;
  /// The reference to the RouteFilter resource.
  final pulumi.Input<SubResourceResponse?>? routeFilter;
  /// The secondary port.
  final pulumi.Input<String?>? secondaryAzurePort;
  /// The secondary address prefix.
  final pulumi.Input<String?>? secondaryPeerAddressPrefix;
  /// The shared key.
  final pulumi.Input<String?>? sharedKey;
  /// The peering state.
  final pulumi.Input<String?>? state;
  /// The peering stats of express route circuit.
  final pulumi.Input<ExpressRouteCircuitStatsResponse?>? stats;
  /// Type of the resource.
  final pulumi.Input<String> type;
  /// The VLAN ID.
  final pulumi.Input<int?>? vlanId;

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
  const ExpressRouteCircuitPeeringResponse({
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
      azureASN: (() { final guardedValue = map['azureASN']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      connections: (() { final guardedValue = map['connections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExpressRouteCircuitConnectionResponse>(guardedValue, (value) => ExpressRouteCircuitConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      expressRouteConnection: (() { final guardedValue = map['expressRouteConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExpressRouteConnectionIdResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gatewayManagerEtag: (() { final guardedValue = map['gatewayManagerEtag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6PeeringConfig: (() { final guardedValue = map['ipv6PeeringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Ipv6ExpressRouteCircuitPeeringConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastModifiedBy: pulumi.Input.fromValue(map['lastModifiedBy'] as String),
      microsoftPeeringConfig: (() { final guardedValue = map['microsoftPeeringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExpressRouteCircuitPeeringConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerASN: (() { final guardedValue = map['peerASN']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      peeredConnections: pulumi.Input.fromValue(pulumi.Input.decodeList<PeerExpressRouteCircuitConnectionResponse>(map['peeredConnections']!, (value) => PeerExpressRouteCircuitConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      peeringType: (() { final guardedValue = map['peeringType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryAzurePort: (() { final guardedValue = map['primaryAzurePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryPeerAddressPrefix: (() { final guardedValue = map['primaryPeerAddressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      routeFilter: (() { final guardedValue = map['routeFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secondaryAzurePort: (() { final guardedValue = map['secondaryAzurePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryPeerAddressPrefix: (() { final guardedValue = map['secondaryPeerAddressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedKey: (() { final guardedValue = map['sharedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stats: (() { final guardedValue = map['stats']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExpressRouteCircuitStatsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      vlanId: (() { final guardedValue = map['vlanId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
