// ignore_for_file: unused_element, unnecessary_cast


/// The EngagementFabric SKU
class SKU {
  /// The name of the SKU
  final String name;
  /// The price tier of the SKU
  final String? tier;

  /// Creates a new [SKU].
  /// [name] The name of the SKU
  /// [tier] The price tier of the SKU
  SKU({
    required this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': ?tier,
    };
  }

  factory SKU.fromMap(Map<String, dynamic> map) {
    return SKU(
      name: map['name'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

