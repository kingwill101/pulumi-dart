// ignore_for_file: unused_element, unnecessary_cast


/// Contains SKU in an ExpressRouteCircuit.
class ExpressRouteCircuitSku {
  /// The family of the SKU.
  final String? family;
  /// The name of the SKU.
  final String? name;
  /// The tier of the SKU.
  final String? tier;

  /// Creates a new [ExpressRouteCircuitSku].
  /// [family] The family of the SKU.
  /// [name] The name of the SKU.
  /// [tier] The tier of the SKU.
  ExpressRouteCircuitSku({
    this.family,
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'family': ?family,
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory ExpressRouteCircuitSku.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitSku(
      family: map['family'] == null ? null : map['family'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

