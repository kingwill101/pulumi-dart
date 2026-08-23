// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An ExpressRoute Circuit
class CircuitResponse {
  /// Identifier of the ExpressRoute Circuit (Microsoft Colo only)
  final pulumi.Input<String> expressRouteID;
  /// ExpressRoute Circuit private peering identifier
  final pulumi.Input<String> expressRoutePrivatePeeringID;
  /// CIDR of primary subnet
  final pulumi.Input<String> primarySubnet;
  /// CIDR of secondary subnet
  final pulumi.Input<String> secondarySubnet;

  /// Creates a new [CircuitResponse].
  /// [expressRouteID] Identifier of the ExpressRoute Circuit (Microsoft Colo only)
  /// [expressRoutePrivatePeeringID] ExpressRoute Circuit private peering identifier
  /// [primarySubnet] CIDR of primary subnet
  /// [secondarySubnet] CIDR of secondary subnet
  const CircuitResponse({
    required this.expressRouteID,
    required this.expressRoutePrivatePeeringID,
    required this.primarySubnet,
    required this.secondarySubnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressRouteID': expressRouteID,
      'expressRoutePrivatePeeringID': expressRoutePrivatePeeringID,
      'primarySubnet': primarySubnet,
      'secondarySubnet': secondarySubnet,
    };
  }

  factory CircuitResponse.fromMap(Map<String, dynamic> map) {
    return CircuitResponse(
      expressRouteID: pulumi.Input.fromValue(map['expressRouteID'] as String),
      expressRoutePrivatePeeringID: pulumi.Input.fromValue(map['expressRoutePrivatePeeringID'] as String),
      primarySubnet: pulumi.Input.fromValue(map['primarySubnet'] as String),
      secondarySubnet: pulumi.Input.fromValue(map['secondarySubnet'] as String),
    );
  }
}
