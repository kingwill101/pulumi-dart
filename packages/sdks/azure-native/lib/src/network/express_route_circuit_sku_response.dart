// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains SKU in an ExpressRouteCircuit.
class ExpressRouteCircuitSkuResponse {
  /// The family of the SKU.
  final pulumi.Input<String>? family;

  /// The name of the SKU.
  final pulumi.Input<String>? name;

  /// The tier of the SKU.
  final pulumi.Input<String>? tier;

  /// Creates a new [ExpressRouteCircuitSkuResponse].
  /// [family] The family of the SKU.
  /// [name] The name of the SKU.
  /// [tier] The tier of the SKU.
  ExpressRouteCircuitSkuResponse({this.family, this.name, this.tier});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'family': ?family, 'name': ?name, 'tier': ?tier};
  }

  factory ExpressRouteCircuitSkuResponse.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitSkuResponse(
      family: (() {
        final guardedValue = map['family'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tier: (() {
        final guardedValue = map['tier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
