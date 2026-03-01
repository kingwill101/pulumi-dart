// ignore_for_file: unused_element, unnecessary_cast


/// The SKU of the Maps Account.
class SkuResponse {
  /// The name of the SKU, in standard format (such as G2).
  final String name;
  /// Gets the sku tier. This is based on the SKU name.
  final String tier;

  /// Creates a new [SkuResponse].
  /// [name] The name of the SKU, in standard format (such as G2).
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

