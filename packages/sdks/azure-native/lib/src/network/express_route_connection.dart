// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_peering_id.dart';
import 'routing_configuration.dart';

/// ExpressRouteConnection resource.
class ExpressRouteConnection {
  /// Authorization key to establish the connection.
  final pulumi.Input<String>? authorizationKey;
  /// Enable internet security.
  final pulumi.Input<bool>? enableInternetSecurity;
  /// Bypass the ExpressRoute gateway when accessing private-links. ExpressRoute FastPath (expressRouteGatewayBypass) must be enabled.
  final pulumi.Input<bool>? enablePrivateLinkFastPath;
  /// The ExpressRoute circuit peering.
  final pulumi.Input<ExpressRouteCircuitPeeringId> expressRouteCircuitPeering;
  /// Enable FastPath to vWan Firewall hub.
  final pulumi.Input<bool>? expressRouteGatewayBypass;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource.
  final pulumi.Input<String> name;
  /// The Routing Configuration indicating the associated and propagated route tables on this connection.
  final pulumi.Input<RoutingConfiguration>? routingConfiguration;
  /// The routing weight associated to the connection.
  final pulumi.Input<int>? routingWeight;

  /// Creates a new [ExpressRouteConnection].
  /// [authorizationKey] Authorization key to establish the connection.
  /// [enableInternetSecurity] Enable internet security.
  /// [enablePrivateLinkFastPath] Bypass the ExpressRoute gateway when accessing private-links. ExpressRoute FastPath (expressRouteGatewayBypass) must be enabled.
  /// [expressRouteCircuitPeering] The ExpressRoute circuit peering.
  /// [expressRouteGatewayBypass] Enable FastPath to vWan Firewall hub.
  /// [id] Resource ID.
  /// [name] The name of the resource.
  /// [routingConfiguration] The Routing Configuration indicating the associated and propagated route tables on this connection.
  /// [routingWeight] The routing weight associated to the connection.
  ExpressRouteConnection({
    this.authorizationKey,
    this.enableInternetSecurity,
    this.enablePrivateLinkFastPath,
    required this.expressRouteCircuitPeering,
    this.expressRouteGatewayBypass,
    this.id,
    required this.name,
    this.routingConfiguration,
    this.routingWeight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationKey': ?authorizationKey,
      'enableInternetSecurity': ?enableInternetSecurity,
      'enablePrivateLinkFastPath': ?enablePrivateLinkFastPath,
      'expressRouteCircuitPeering': pulumi.Input.mapInputValue<ExpressRouteCircuitPeeringId, Map<String, dynamic>>(expressRouteCircuitPeering, (value) => value.toMap()),
      'expressRouteGatewayBypass': ?expressRouteGatewayBypass,
      'id': ?id,
      'name': name,
      'routingConfiguration': ?pulumi.Input.mapOptionalInputValue<RoutingConfiguration, Map<String, dynamic>>(routingConfiguration, (value) => value.toMap()),
      'routingWeight': ?routingWeight,
    };
  }

  factory ExpressRouteConnection.fromMap(Map<String, dynamic> map) {
    return ExpressRouteConnection(
      authorizationKey: map['authorizationKey'] == null ? null : (map['authorizationKey']! as String).input(),
      enableInternetSecurity: map['enableInternetSecurity'] == null ? null : (map['enableInternetSecurity']! as bool).input(),
      enablePrivateLinkFastPath: map['enablePrivateLinkFastPath'] == null ? null : (map['enablePrivateLinkFastPath']! as bool).input(),
      expressRouteCircuitPeering: (ExpressRouteCircuitPeeringId.fromMap((map['expressRouteCircuitPeering'] as Map).cast<String, dynamic>())).input(),
      expressRouteGatewayBypass: map['expressRouteGatewayBypass'] == null ? null : (map['expressRouteGatewayBypass']! as bool).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: (map['name'] as String).input(),
      routingConfiguration: map['routingConfiguration'] == null ? null : (RoutingConfiguration.fromMap((map['routingConfiguration']! as Map).cast<String, dynamic>())).input(),
      routingWeight: map['routingWeight'] == null ? null : (map['routingWeight']! as int).input(),
    );
  }
}

