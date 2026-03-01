// ignore_for_file: unused_element, unnecessary_cast


/// An ExpressRoute Circuit
class CircuitResponse {
  /// Identifier of the ExpressRoute Circuit (Microsoft Colo only)
  final String expressRouteID;
  /// ExpressRoute Circuit private peering identifier
  final String expressRoutePrivatePeeringID;
  /// CIDR of primary subnet
  final String primarySubnet;
  /// CIDR of secondary subnet
  final String secondarySubnet;

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
      expressRouteID: map['expressRouteID'] as String,
      expressRoutePrivatePeeringID: map['expressRoutePrivatePeeringID'] as String,
      primarySubnet: map['primarySubnet'] as String,
      secondarySubnet: map['secondarySubnet'] as String,
    );
  }
}

