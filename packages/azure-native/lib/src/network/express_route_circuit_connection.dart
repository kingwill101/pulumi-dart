// ignore_for_file: unused_element, unnecessary_cast

import 'ipv6_circuit_connection_config.dart';
import 'sub_resource.dart';

/// Express Route Circuit Connection in an ExpressRouteCircuitPeering resource.
class ExpressRouteCircuitConnection {
  /// /29 IP address space to carve out Customer addresses for tunnels.
  final String? addressPrefix;
  /// The authorization key.
  final String? authorizationKey;
  /// Reference to Express Route Circuit Private Peering Resource of the circuit initiating connection.
  final SubResource? expressRouteCircuitPeering;
  /// Resource ID.
  final String? id;
  /// IPv6 Address PrefixProperties of the express route circuit connection.
  final Ipv6CircuitConnectionConfig? ipv6CircuitConnectionConfig;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Reference to Express Route Circuit Private Peering Resource of the peered circuit.
  final SubResource? peerExpressRouteCircuitPeering;

  /// Creates a new [ExpressRouteCircuitConnection].
  /// [addressPrefix] /29 IP address space to carve out Customer addresses for tunnels.
  /// [authorizationKey] The authorization key.
  /// [expressRouteCircuitPeering] Reference to Express Route Circuit Private Peering Resource of the circuit initiating connection.
  /// [id] Resource ID.
  /// [ipv6CircuitConnectionConfig] IPv6 Address PrefixProperties of the express route circuit connection.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [peerExpressRouteCircuitPeering] Reference to Express Route Circuit Private Peering Resource of the peered circuit.
  ExpressRouteCircuitConnection({
    this.addressPrefix,
    this.authorizationKey,
    this.expressRouteCircuitPeering,
    this.id,
    this.ipv6CircuitConnectionConfig,
    this.name,
    this.peerExpressRouteCircuitPeering,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'authorizationKey': ?authorizationKey,
      'expressRouteCircuitPeering': ?expressRouteCircuitPeering == null ? null : expressRouteCircuitPeering!.toMap(),
      'id': ?id,
      'ipv6CircuitConnectionConfig': ?ipv6CircuitConnectionConfig == null ? null : ipv6CircuitConnectionConfig!.toMap(),
      'name': ?name,
      'peerExpressRouteCircuitPeering': ?peerExpressRouteCircuitPeering == null ? null : peerExpressRouteCircuitPeering!.toMap(),
    };
  }

  factory ExpressRouteCircuitConnection.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitConnection(
      addressPrefix: map['addressPrefix'] == null ? null : map['addressPrefix'] as String,
      authorizationKey: map['authorizationKey'] == null ? null : map['authorizationKey'] as String,
      expressRouteCircuitPeering: map['expressRouteCircuitPeering'] == null ? null : SubResource.fromMap((map['expressRouteCircuitPeering'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      ipv6CircuitConnectionConfig: map['ipv6CircuitConnectionConfig'] == null ? null : Ipv6CircuitConnectionConfig.fromMap((map['ipv6CircuitConnectionConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      peerExpressRouteCircuitPeering: map['peerExpressRouteCircuitPeering'] == null ? null : SubResource.fromMap((map['peerExpressRouteCircuitPeering'] as Map).cast<String, dynamic>()),
    );
  }
}

