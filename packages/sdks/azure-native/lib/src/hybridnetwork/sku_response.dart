// ignore_for_file: unused_element, unnecessary_cast


/// Sku, to be associated with a SiteNetworkService.
class SkuResponse {
  /// Name of this Sku
  final String name;
  /// The SKU tier based on the SKU name.
  final String tier;

  /// Creates a new [SkuResponse].
  /// [name] Name of this Sku
  /// [tier] The SKU tier based on the SKU name.
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

