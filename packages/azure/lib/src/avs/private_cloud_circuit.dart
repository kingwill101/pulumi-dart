// ignore_for_file: unused_element, unnecessary_cast


class PrivateCloudCircuit {
  /// The ID of the ExpressRoute Circuit.
  final String? expressRouteId;
  /// The ID of the ExpressRoute Circuit private peering.
  final String? expressRoutePrivatePeeringId;
  /// The CIDR of the primary subnet.
  final String? primarySubnetCidr;
  /// The CIDR of the secondary subnet.
  final String? secondarySubnetCidr;

  /// Creates a new [PrivateCloudCircuit].
  /// [expressRouteId] The ID of the ExpressRoute Circuit.
  /// [expressRoutePrivatePeeringId] The ID of the ExpressRoute Circuit private peering.
  /// [primarySubnetCidr] The CIDR of the primary subnet.
  /// [secondarySubnetCidr] The CIDR of the secondary subnet.
  PrivateCloudCircuit({
    this.expressRouteId,
    this.expressRoutePrivatePeeringId,
    this.primarySubnetCidr,
    this.secondarySubnetCidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressRouteId': ?expressRouteId,
      'expressRoutePrivatePeeringId': ?expressRoutePrivatePeeringId,
      'primarySubnetCidr': ?primarySubnetCidr,
      'secondarySubnetCidr': ?secondarySubnetCidr,
    };
  }

  factory PrivateCloudCircuit.fromMap(Map<String, dynamic> map) {
    return PrivateCloudCircuit(
      expressRouteId: map['expressRouteId'] == null ? null : map['expressRouteId'] as String,
      expressRoutePrivatePeeringId: map['expressRoutePrivatePeeringId'] == null ? null : map['expressRoutePrivatePeeringId'] as String,
      primarySubnetCidr: map['primarySubnetCidr'] == null ? null : map['primarySubnetCidr'] as String,
      secondarySubnetCidr: map['secondarySubnetCidr'] == null ? null : map['secondarySubnetCidr'] as String,
    );
  }
}

