// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ExpressRoute circuit peering identifier.
class ExpressRouteCircuitPeeringIdResponse {
  /// The ID of the ExpressRoute circuit peering.
  final pulumi.Input<String>? id;

  /// Creates a new [ExpressRouteCircuitPeeringIdResponse].
  /// [id] The ID of the ExpressRoute circuit peering.
  const ExpressRouteCircuitPeeringIdResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ExpressRouteCircuitPeeringIdResponse.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitPeeringIdResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
