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
  final pulumi.Input<int?>? azureASN;
  /// The list of circuit connections associated with Azure Private Peering for this circuit.
  final pulumi.Input<List<ExpressRouteCircuitConnection>?>? connections;
  /// The GatewayManager Etag.
  final pulumi.Input<String?>? gatewayManagerEtag;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// The IPv6 peering configuration.
  final pulumi.Input<Ipv6ExpressRouteCircuitPeeringConfig?>? ipv6PeeringConfig;
  /// The Microsoft peering configuration.
  final pulumi.Input<ExpressRouteCircuitPeeringConfig?>? microsoftPeeringConfig;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String?>? name;
  /// The peer ASN.
  final pulumi.Input<double?>? peerASN;
  /// The peering type.
  final pulumi.Input<dynamic>? peeringType;
  /// The primary port.
  final pulumi.Input<String?>? primaryAzurePort;
  /// The primary address prefix.
  final pulumi.Input<String?>? primaryPeerAddressPrefix;
  /// The reference to the RouteFilter resource.
  final pulumi.Input<SubResource?>? routeFilter;
  /// The secondary port.
  final pulumi.Input<String?>? secondaryAzurePort;
  /// The secondary address prefix.
  final pulumi.Input<String?>? secondaryPeerAddressPrefix;
  /// The shared key.
  final pulumi.Input<String?>? sharedKey;
  /// The peering state.
  final pulumi.Input<dynamic>? state;
  /// The peering stats of express route circuit.
  final pulumi.Input<ExpressRouteCircuitStats?>? stats;
  /// The VLAN ID.
  final pulumi.Input<int?>? vlanId;

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
  const ExpressRouteCircuitPeering({
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
      azureASN: (() { final guardedValue = map['azureASN']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      connections: (() { final guardedValue = map['connections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExpressRouteCircuitConnection>(guardedValue, (value) => ExpressRouteCircuitConnection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      gatewayManagerEtag: (() { final guardedValue = map['gatewayManagerEtag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6PeeringConfig: (() { final guardedValue = map['ipv6PeeringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Ipv6ExpressRouteCircuitPeeringConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      microsoftPeeringConfig: (() { final guardedValue = map['microsoftPeeringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExpressRouteCircuitPeeringConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerASN: (() { final guardedValue = map['peerASN']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      peeringType: (() { final guardedValue = map['peeringType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      primaryAzurePort: (() { final guardedValue = map['primaryAzurePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryPeerAddressPrefix: (() { final guardedValue = map['primaryPeerAddressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeFilter: (() { final guardedValue = map['routeFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secondaryAzurePort: (() { final guardedValue = map['secondaryAzurePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryPeerAddressPrefix: (() { final guardedValue = map['secondaryPeerAddressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedKey: (() { final guardedValue = map['sharedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      stats: (() { final guardedValue = map['stats']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExpressRouteCircuitStats.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vlanId: (() { final guardedValue = map['vlanId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
