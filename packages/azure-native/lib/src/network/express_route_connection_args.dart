// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_peering_id.dart';
import 'routing_configuration.dart';

/// {@template pulumi_network_express_route_connection_args_doc}
/// The set of arguments for ExpressRouteConnection.
/// {@endtemplate}
/// {@macro pulumi_network_express_route_connection_args_doc}
class ExpressRouteConnectionArgs {
  /// Authorization key to establish the connection.
  final pulumi.Input<String>? authorizationKey;
  /// The name of the connection subresource.
  final pulumi.Input<String>? connectionName;
  /// Enable internet security.
  final pulumi.Input<bool>? enableInternetSecurity;
  /// Bypass the ExpressRoute gateway when accessing private-links. ExpressRoute FastPath (expressRouteGatewayBypass) must be enabled.
  final pulumi.Input<bool>? enablePrivateLinkFastPath;
  /// The ExpressRoute circuit peering.
  final pulumi.Input<ExpressRouteCircuitPeeringId> expressRouteCircuitPeering;
  /// Enable FastPath to vWan Firewall hub.
  final pulumi.Input<bool>? expressRouteGatewayBypass;
  /// The name of the ExpressRoute gateway.
  final pulumi.Input<String> expressRouteGatewayName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource.
  final pulumi.Input<String> name;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The Routing Configuration indicating the associated and propagated route tables on this connection.
  final pulumi.Input<RoutingConfiguration>? routingConfiguration;
  /// The routing weight associated to the connection.
  final pulumi.Input<int>? routingWeight;

  /// Creates a new [ExpressRouteConnectionArgs].
  /// [authorizationKey] Authorization key to establish the connection.
  /// [connectionName] The name of the connection subresource.
  /// [enableInternetSecurity] Enable internet security.
  /// [enablePrivateLinkFastPath] Bypass the ExpressRoute gateway when accessing private-links. ExpressRoute FastPath (expressRouteGatewayBypass) must be enabled.
  /// [expressRouteCircuitPeering] The ExpressRoute circuit peering.
  /// [expressRouteGatewayBypass] Enable FastPath to vWan Firewall hub.
  /// [expressRouteGatewayName] The name of the ExpressRoute gateway.
  /// [id] Resource ID.
  /// [name] The name of the resource.
  /// [resourceGroupName] The name of the resource group.
  /// [routingConfiguration] The Routing Configuration indicating the associated and propagated route tables on this connection.
  /// [routingWeight] The routing weight associated to the connection.
  ExpressRouteConnectionArgs({
    String? authorizationKey,
    String? connectionName,
    bool? enableInternetSecurity,
    bool? enablePrivateLinkFastPath,
    required ExpressRouteCircuitPeeringId expressRouteCircuitPeering,
    bool? expressRouteGatewayBypass,
    required String expressRouteGatewayName,
    String? id,
    required String name,
    required String resourceGroupName,
    RoutingConfiguration? routingConfiguration,
    int? routingWeight,
  }) :
      authorizationKey = pulumi.Input.asOptionalInput<String>(authorizationKey),
      connectionName = pulumi.Input.asOptionalInput<String>(connectionName),
      enableInternetSecurity = pulumi.Input.asOptionalInput<bool>(enableInternetSecurity),
      enablePrivateLinkFastPath = pulumi.Input.asOptionalInput<bool>(enablePrivateLinkFastPath),
      expressRouteCircuitPeering = pulumi.Input.asInput<ExpressRouteCircuitPeeringId>(expressRouteCircuitPeering),
      expressRouteGatewayBypass = pulumi.Input.asOptionalInput<bool>(expressRouteGatewayBypass),
      expressRouteGatewayName = pulumi.Input.asInput<String>(expressRouteGatewayName),
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routingConfiguration = pulumi.Input.asOptionalInput<RoutingConfiguration>(routingConfiguration),
      routingWeight = pulumi.Input.asOptionalInput<int>(routingWeight);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationKey': ?authorizationKey,
      'connectionName': ?connectionName,
      'enableInternetSecurity': ?enableInternetSecurity,
      'enablePrivateLinkFastPath': ?enablePrivateLinkFastPath,
      'expressRouteCircuitPeering': pulumi.Input.mapInputValue<ExpressRouteCircuitPeeringId, Map<String, dynamic>>(expressRouteCircuitPeering, (value) => value.toMap()),
      'expressRouteGatewayBypass': ?expressRouteGatewayBypass,
      'expressRouteGatewayName': expressRouteGatewayName,
      'id': ?id,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'routingConfiguration': ?pulumi.Input.mapOptionalInputValue<RoutingConfiguration, Map<String, dynamic>>(routingConfiguration, (value) => value.toMap()),
      'routingWeight': ?routingWeight,
    };
  }

  factory ExpressRouteConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ExpressRouteConnectionArgs(
      authorizationKey: map['authorizationKey'] == null ? null : map['authorizationKey'] as String,
      connectionName: map['connectionName'] == null ? null : map['connectionName'] as String,
      enableInternetSecurity: map['enableInternetSecurity'] == null ? null : map['enableInternetSecurity'] as bool,
      enablePrivateLinkFastPath: map['enablePrivateLinkFastPath'] == null ? null : map['enablePrivateLinkFastPath'] as bool,
      expressRouteCircuitPeering: ExpressRouteCircuitPeeringId.fromMap((map['expressRouteCircuitPeering'] as Map).cast<String, dynamic>()),
      expressRouteGatewayBypass: map['expressRouteGatewayBypass'] == null ? null : map['expressRouteGatewayBypass'] as bool,
      expressRouteGatewayName: map['expressRouteGatewayName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      routingConfiguration: map['routingConfiguration'] == null ? null : RoutingConfiguration.fromMap((map['routingConfiguration'] as Map).cast<String, dynamic>()),
      routingWeight: map['routingWeight'] == null ? null : map['routingWeight'] as int,
    );
  }
}

