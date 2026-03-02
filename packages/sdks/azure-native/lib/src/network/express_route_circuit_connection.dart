// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipv6_circuit_connection_config.dart';
import 'sub_resource.dart';

/// Express Route Circuit Connection in an ExpressRouteCircuitPeering resource.
class ExpressRouteCircuitConnection {
  /// /29 IP address space to carve out Customer addresses for tunnels.
  final pulumi.Input<String>? addressPrefix;
  /// The authorization key.
  final pulumi.Input<String>? authorizationKey;
  /// Reference to Express Route Circuit Private Peering Resource of the circuit initiating connection.
  final pulumi.Input<SubResource>? expressRouteCircuitPeering;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// IPv6 Address PrefixProperties of the express route circuit connection.
  final pulumi.Input<Ipv6CircuitConnectionConfig>? ipv6CircuitConnectionConfig;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// Reference to Express Route Circuit Private Peering Resource of the peered circuit.
  final pulumi.Input<SubResource>? peerExpressRouteCircuitPeering;

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
      'expressRouteCircuitPeering': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(expressRouteCircuitPeering, (value) => value.toMap()),
      'id': ?id,
      'ipv6CircuitConnectionConfig': ?pulumi.Input.mapOptionalInputValue<Ipv6CircuitConnectionConfig, Map<String, dynamic>>(ipv6CircuitConnectionConfig, (value) => value.toMap()),
      'name': ?name,
      'peerExpressRouteCircuitPeering': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(peerExpressRouteCircuitPeering, (value) => value.toMap()),
    };
  }

  factory ExpressRouteCircuitConnection.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitConnection(
      addressPrefix: map['addressPrefix'] == null ? null : (map['addressPrefix']! as String).input(),
      authorizationKey: map['authorizationKey'] == null ? null : (map['authorizationKey']! as String).input(),
      expressRouteCircuitPeering: map['expressRouteCircuitPeering'] == null ? null : (SubResource.fromMap((map['expressRouteCircuitPeering']! as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      ipv6CircuitConnectionConfig: map['ipv6CircuitConnectionConfig'] == null ? null : (Ipv6CircuitConnectionConfig.fromMap((map['ipv6CircuitConnectionConfig']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      peerExpressRouteCircuitPeering: map['peerExpressRouteCircuitPeering'] == null ? null : (SubResource.fromMap((map['peerExpressRouteCircuitPeering']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

