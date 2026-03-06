// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipv6_circuit_connection_config.dart';
import 'sub_resource.dart';

/// {@template pulumi_network_express_route_circuit_connection_args_doc}
/// The set of arguments for ExpressRouteCircuitConnection.
/// {@endtemplate}
/// {@macro pulumi_network_express_route_circuit_connection_args_doc}
class ExpressRouteCircuitConnectionArgs {
  /// /29 IP address space to carve out Customer addresses for tunnels.
  final pulumi.Input<String>? addressPrefix;
  /// The authorization key.
  final pulumi.Input<String>? authorizationKey;
  /// The name of the express route circuit.
  final pulumi.Input<String> circuitName;
  /// The name of the express route circuit connection.
  final pulumi.Input<String>? connectionName;
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
  /// The name of the peering.
  final pulumi.Input<String> peeringName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ExpressRouteCircuitConnectionArgs].
  /// [addressPrefix] /29 IP address space to carve out Customer addresses for tunnels.
  /// [authorizationKey] The authorization key.
  /// [circuitName] The name of the express route circuit.
  /// [connectionName] The name of the express route circuit connection.
  /// [expressRouteCircuitPeering] Reference to Express Route Circuit Private Peering Resource of the circuit initiating connection.
  /// [id] Resource ID.
  /// [ipv6CircuitConnectionConfig] IPv6 Address PrefixProperties of the express route circuit connection.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [peerExpressRouteCircuitPeering] Reference to Express Route Circuit Private Peering Resource of the peered circuit.
  /// [peeringName] The name of the peering.
  /// [resourceGroupName] The name of the resource group.
  const ExpressRouteCircuitConnectionArgs({
    this.addressPrefix,
    this.authorizationKey,
    required this.circuitName,
    this.connectionName,
    this.expressRouteCircuitPeering,
    this.id,
    this.ipv6CircuitConnectionConfig,
    this.name,
    this.peerExpressRouteCircuitPeering,
    required this.peeringName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'authorizationKey': ?authorizationKey,
      'circuitName': circuitName,
      'connectionName': ?connectionName,
      'expressRouteCircuitPeering': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(expressRouteCircuitPeering, (value) => value.toMap()),
      'id': ?id,
      'ipv6CircuitConnectionConfig': ?pulumi.Input.mapOptionalInputValue<Ipv6CircuitConnectionConfig, Map<String, dynamic>>(ipv6CircuitConnectionConfig, (value) => value.toMap()),
      'name': ?name,
      'peerExpressRouteCircuitPeering': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(peerExpressRouteCircuitPeering, (value) => value.toMap()),
      'peeringName': peeringName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ExpressRouteCircuitConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitConnectionArgs(
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizationKey: (() { final guardedValue = map['authorizationKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      circuitName: pulumi.Input.fromValue(map['circuitName'] as String),
      connectionName: (() { final guardedValue = map['connectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expressRouteCircuitPeering: (() { final guardedValue = map['expressRouteCircuitPeering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6CircuitConnectionConfig: (() { final guardedValue = map['ipv6CircuitConnectionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Ipv6CircuitConnectionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerExpressRouteCircuitPeering: (() { final guardedValue = map['peerExpressRouteCircuitPeering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      peeringName: pulumi.Input.fromValue(map['peeringName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

