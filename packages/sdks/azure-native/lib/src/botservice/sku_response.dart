// ignore_for_file: unused_element, unnecessary_cast


/// The SKU of the cognitive services account.
class SkuResponse {
  /// The sku name
  final String name;
  /// Gets the sku tier. This is based on the SKU name.
  final String tier;

  /// Creates a new [SkuResponse].
  /// [name] The sku name
  /// [tier] Gets the sku tier. This is based on the SKU name.
  SkuResponse({
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': tier,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      name: map['name'] as String,
      tier: map['tier'] as String,
    );
  }
}

