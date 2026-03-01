// ignore_for_file: unused_element, unnecessary_cast


/// ExpressRoute circuit peering identifier.
class ExpressRouteCircuitPeeringIdResponse {
  /// The ID of the ExpressRoute circuit peering.
  final String? id;

  /// Creates a new [ExpressRouteCircuitPeeringIdResponse].
  /// [id] The ID of the ExpressRoute circuit peering.
  ExpressRouteCircuitPeeringIdResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ExpressRouteCircuitPeeringIdResponse.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitPeeringIdResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

