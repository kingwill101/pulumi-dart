// ignore_for_file: unused_element, unnecessary_cast


/// The EngagementFabric SKU
class SKUResponse {
  /// The name of the SKU
  final String name;
  /// The price tier of the SKU
  final String? tier;

  /// Creates a new [SKUResponse].
  /// [name] The name of the SKU
  /// [tier] The price tier of the SKU
  SKUResponse({
    required this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': ?tier,
    };
  }

  factory SKUResponse.fromMap(Map<String, dynamic> map) {
    return SKUResponse(
      name: map['name'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

