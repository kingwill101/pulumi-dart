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
  ExpressRouteCircuitConnectionArgs({
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
      addressPrefix: map['addressPrefix'] == null ? null : (map['addressPrefix']! as String).input(),
      authorizationKey: map['authorizationKey'] == null ? null : (map['authorizationKey']! as String).input(),
      circuitName: (map['circuitName'] as String).input(),
      connectionName: map['connectionName'] == null ? null : (map['connectionName']! as String).input(),
      expressRouteCircuitPeering: map['expressRouteCircuitPeering'] == null ? null : (SubResource.fromMap((map['expressRouteCircuitPeering']! as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      ipv6CircuitConnectionConfig: map['ipv6CircuitConnectionConfig'] == null ? null : (Ipv6CircuitConnectionConfig.fromMap((map['ipv6CircuitConnectionConfig']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      peerExpressRouteCircuitPeering: map['peerExpressRouteCircuitPeering'] == null ? null : (SubResource.fromMap((map['peerExpressRouteCircuitPeering']! as Map).cast<String, dynamic>())).input(),
      peeringName: (map['peeringName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

