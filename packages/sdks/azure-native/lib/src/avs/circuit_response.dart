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
  CircuitResponse({
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
      expressRouteID: (map['expressRouteID'] as String).input(),
      expressRoutePrivatePeeringID: (map['expressRoutePrivatePeeringID'] as String).input(),
      primarySubnet: (map['primarySubnet'] as String).input(),
      secondarySubnet: (map['secondarySubnet'] as String).input(),
    );
  }
}

