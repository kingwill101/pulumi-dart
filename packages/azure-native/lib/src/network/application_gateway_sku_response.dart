// ignore_for_file: unused_element, unnecessary_cast


/// SKU of an application gateway.
class ApplicationGatewaySkuResponse {
  /// Capacity (instance count) of an application gateway.
  final int? capacity;
  /// Family of an application gateway SKU.
  final String? family;
  /// Name of an application gateway SKU.
  final String? name;
  /// Tier of an application gateway.
  final String? tier;

  /// Creates a new [ApplicationGatewaySkuResponse].
  /// [capacity] Capacity (instance count) of an application gateway.
  /// [family] Family of an application gateway SKU.
  /// [name] Name of an application gateway SKU.
  /// [tier] Tier of an application gateway.
  ApplicationGatewaySkuResponse({
    this.capacity,
    this.family,
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'family': ?family,
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory ApplicationGatewaySkuResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewaySkuResponse(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      family: map['family'] == null ? null : map['family'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

