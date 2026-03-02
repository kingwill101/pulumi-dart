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
  final pulumi.Input<int>? azureASN;
  /// The list of circuit connections associated with Azure Private Peering for this circuit.
  final pulumi.Input<List<ExpressRouteCircuitConnection>>? connections;
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
  /// The peering type.
  final pulumi.Input<String>? peeringType;
  /// The primary port.
  final pulumi.Input<String>? primaryAzurePort;
  /// The primary address prefix.
  final pulumi.Input<String>? primaryPeerAddressPrefix;
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
      'connections': ?pulumi.Input.mapOptionalInputValue<List<ExpressRouteCircuitConnection>, List<Map<String, dynamic>>>(connections, (value) => pulumi.Input.encodeList<ExpressRouteCircuitConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gatewayManagerEtag': ?gatewayManagerEtag,
      'id': ?id,
      'ipv6PeeringConfig': ?pulumi.Input.mapOptionalInputValue<Ipv6ExpressRouteCircuitPeeringConfig, Map<String, dynamic>>(ipv6PeeringConfig, (value) => value.toMap()),
      'microsoftPeeringConfig': ?pulumi.Input.mapOptionalInputValue<ExpressRouteCircuitPeeringConfig, Map<String, dynamic>>(microsoftPeeringConfig, (value) => value.toMap()),
      'name': ?name,
      'peerASN': ?peerASN,
      'peeringType': ?peeringType,
      'primaryAzurePort': ?primaryAzurePort,
      'primaryPeerAddressPrefix': ?primaryPeerAddressPrefix,
      'routeFilter': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(routeFilter, (value) => value.toMap()),
      'secondaryAzurePort': ?secondaryAzurePort,
      'secondaryPeerAddressPrefix': ?secondaryPeerAddressPrefix,
      'sharedKey': ?sharedKey,
      'state': ?state,
      'stats': ?pulumi.Input.mapOptionalInputValue<ExpressRouteCircuitStats, Map<String, dynamic>>(stats, (value) => value.toMap()),
      'vlanId': ?vlanId,
    };
  }

  factory ExpressRouteCircuitPeering.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitPeering(
      azureASN: map['azureASN'] == null ? null : (map['azureASN'] as int).input(),
      connections: map['connections'] == null ? null : (pulumi.Input.decodeList<ExpressRouteCircuitConnection>(map['connections'], (value) => ExpressRouteCircuitConnection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      gatewayManagerEtag: map['gatewayManagerEtag'] == null ? null : (map['gatewayManagerEtag'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      ipv6PeeringConfig: map['ipv6PeeringConfig'] == null ? null : (Ipv6ExpressRouteCircuitPeeringConfig.fromMap((map['ipv6PeeringConfig'] as Map).cast<String, dynamic>())).input(),
      microsoftPeeringConfig: map['microsoftPeeringConfig'] == null ? null : (ExpressRouteCircuitPeeringConfig.fromMap((map['microsoftPeeringConfig'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      peerASN: map['peerASN'] == null ? null : (map['peerASN'] as double).input(),
      peeringType: map['peeringType'] == null ? null : (map['peeringType'] as String).input(),
      primaryAzurePort: map['primaryAzurePort'] == null ? null : (map['primaryAzurePort'] as String).input(),
      primaryPeerAddressPrefix: map['primaryPeerAddressPrefix'] == null ? null : (map['primaryPeerAddressPrefix'] as String).input(),
      routeFilter: map['routeFilter'] == null ? null : (SubResource.fromMap((map['routeFilter'] as Map).cast<String, dynamic>())).input(),
      secondaryAzurePort: map['secondaryAzurePort'] == null ? null : (map['secondaryAzurePort'] as String).input(),
      secondaryPeerAddressPrefix: map['secondaryPeerAddressPrefix'] == null ? null : (map['secondaryPeerAddressPrefix'] as String).input(),
      sharedKey: map['sharedKey'] == null ? null : (map['sharedKey'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      stats: map['stats'] == null ? null : (ExpressRouteCircuitStats.fromMap((map['stats'] as Map).cast<String, dynamic>())).input(),
      vlanId: map['vlanId'] == null ? null : (map['vlanId'] as int).input(),
    );
  }
}

