// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_connection.dart';
import 'express_route_circuit_peering_config.dart';
import 'express_route_circuit_stats.dart';
import 'ipv6_express_route_circuit_peering_config.dart';
import 'sub_resource.dart';

/// Peering in an ExpressRouteCircuit resource.
class ExpressRouteCircuitPeering {
  /// The Azure ASN.
  final int? azureASN;
  /// The list of circuit connections associated with Azure Private Peering for this circuit.
  final List<ExpressRouteCircuitConnection>? connections;
  /// The GatewayManager Etag.
  final String? gatewayManagerEtag;
  /// Resource ID.
  final String? id;
  /// The IPv6 peering configuration.
  final Ipv6ExpressRouteCircuitPeeringConfig? ipv6PeeringConfig;
  /// The Microsoft peering configuration.
  final ExpressRouteCircuitPeeringConfig? microsoftPeeringConfig;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The peer ASN.
  final double? peerASN;
  /// The peering type.
  final String? peeringType;
  /// The primary port.
  final String? primaryAzurePort;
  /// The primary address prefix.
  final String? primaryPeerAddressPrefix;
  /// The reference to the RouteFilter resource.
  final SubResource? routeFilter;
  /// The secondary port.
  final String? secondaryAzurePort;
  /// The secondary address prefix.
  final String? secondaryPeerAddressPrefix;
  /// The shared key.
  final String? sharedKey;
  /// The peering state.
  final String? state;
  /// The peering stats of express route circuit.
  final ExpressRouteCircuitStats? stats;
  /// The VLAN ID.
  final int? vlanId;

  /// Creates a new [ExpressRouteCircuitPeering].
  /// [azureASN] The Azure ASN.
  /// [connections] The list of circuit connections associated with Azure Private Peering for this circuit.
  /// [gatewayManagerEtag] The GatewayManager Etag.
  /// [id] Resource ID.
  /// [ipv6PeeringConfig] The IPv6 peering configuration.
  /// [microsoftPeeringConfig] The Microsoft peering configuration.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [peerASN] The peer ASN.
  /// [peeringType] The peering type.
  /// [primaryAzurePort] The primary port.
  /// [primaryPeerAddressPrefix] The primary address prefix.
  /// [routeFilter] The reference to the RouteFilter resource.
  /// [secondaryAzurePort] The secondary port.
  /// [secondaryPeerAddressPrefix] The secondary address prefix.
  /// [sharedKey] The shared key.
  /// [state] The peering state.
  /// [stats] The peering stats of express route circuit.
  /// [vlanId] The VLAN ID.
  ExpressRouteCircuitPeering({
    this.azureASN,
    this.connections,
    this.gatewayManagerEtag,
    this.id,
    this.ipv6PeeringConfig,
    this.microsoftPeeringConfig,
    this.name,
    this.peerASN,
    this.peeringType,
    this.primaryAzurePort,
    this.primaryPeerAddressPrefix,
    this.routeFilter,
    this.secondaryAzurePort,
    this.secondaryPeerAddressPrefix,
    this.sharedKey,
    this.state,
    this.stats,
    this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureASN': ?azureASN,
      'connections': ?connections == null ? null : pulumi.Input.encodeList<ExpressRouteCircuitConnection, Map<String, dynamic>>(connections!, (value) => value.toMap()),
      'gatewayManagerEtag': ?gatewayManagerEtag,
      'id': ?id,
      'ipv6PeeringConfig': ?ipv6PeeringConfig == null ? null : ipv6PeeringConfig!.toMap(),
      'microsoftPeeringConfig': ?microsoftPeeringConfig == null ? null : microsoftPeeringConfig!.toMap(),
      'name': ?name,
      'peerASN': ?peerASN,
      'peeringType': ?peeringType,
      'primaryAzurePort': ?primaryAzurePort,
      'primaryPeerAddressPrefix': ?primaryPeerAddressPrefix,
      'routeFilter': ?routeFilter == null ? null : routeFilter!.toMap(),
      'secondaryAzurePort': ?secondaryAzurePort,
      'secondaryPeerAddressPrefix': ?secondaryPeerAddressPrefix,
      'sharedKey': ?sharedKey,
      'state': ?state,
      'stats': ?stats == null ? null : stats!.toMap(),
      'vlanId': ?vlanId,
    };
  }

  factory ExpressRouteCircuitPeering.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitPeering(
      azureASN: map['azureASN'] == null ? null : map['azureASN'] as int,
      connections: map['connections'] == null ? null : pulumi.Input.decodeList<ExpressRouteCircuitConnection>(map['connections'], (value) => ExpressRouteCircuitConnection.fromMap((value as Map).cast<String, dynamic>())),
      gatewayManagerEtag: map['gatewayManagerEtag'] == null ? null : map['gatewayManagerEtag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      ipv6PeeringConfig: map['ipv6PeeringConfig'] == null ? null : Ipv6ExpressRouteCircuitPeeringConfig.fromMap((map['ipv6PeeringConfig'] as Map).cast<String, dynamic>()),
      microsoftPeeringConfig: map['microsoftPeeringConfig'] == null ? null : ExpressRouteCircuitPeeringConfig.fromMap((map['microsoftPeeringConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      peerASN: map['peerASN'] == null ? null : map['peerASN'] as double,
      peeringType: map['peeringType'] == null ? null : map['peeringType'] as String,
      primaryAzurePort: map['primaryAzurePort'] == null ? null : map['primaryAzurePort'] as String,
      primaryPeerAddressPrefix: map['primaryPeerAddressPrefix'] == null ? null : map['primaryPeerAddressPrefix'] as String,
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

