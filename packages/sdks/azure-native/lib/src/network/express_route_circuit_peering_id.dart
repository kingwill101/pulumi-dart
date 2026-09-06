// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ExpressRoute circuit peering identifier.
class ExpressRouteCircuitPeeringId {
  /// The ID of the ExpressRoute circuit peering.
  final pulumi.Input<String?>? id;

  /// Creates a new [ExpressRouteCircuitPeeringId].
  /// [id] The ID of the ExpressRoute circuit peering.
  const ExpressRouteCircuitPeeringId({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ExpressRouteCircuitPeeringId.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitPeeringId(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
