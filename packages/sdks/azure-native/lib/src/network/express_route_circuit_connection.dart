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
  const ExpressRouteCircuitConnection({
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
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizationKey: (() { final guardedValue = map['authorizationKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expressRouteCircuitPeering: (() { final guardedValue = map['expressRouteCircuitPeering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6CircuitConnectionConfig: (() { final guardedValue = map['ipv6CircuitConnectionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Ipv6CircuitConnectionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerExpressRouteCircuitPeering: (() { final guardedValue = map['peerExpressRouteCircuitPeering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

