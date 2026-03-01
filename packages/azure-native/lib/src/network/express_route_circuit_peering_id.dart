// ignore_for_file: unused_element, unnecessary_cast


/// ExpressRoute circuit peering identifier.
class ExpressRouteCircuitPeeringId {
  /// The ID of the ExpressRoute circuit peering.
  final String? id;

  /// Creates a new [ExpressRouteCircuitPeeringId].
  /// [id] The ID of the ExpressRoute circuit peering.
  ExpressRouteCircuitPeeringId({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ExpressRouteCircuitPeeringId.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitPeeringId(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

