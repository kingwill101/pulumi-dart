// ignore_for_file: unused_element, unnecessary_cast


/// Represents the SKU name and Azure pricing tier for Microsoft Fabric capacity resource.
class RpSkuResponse {
  /// The name of the SKU level.
  final String name;
  /// The name of the Azure pricing tier to which the SKU applies.
  final String tier;

  /// Creates a new [RpSkuResponse].
  /// [name] The name of the SKU level.
  /// [tier] The name of the Azure pricing tier to which the SKU applies.
  RpSkuResponse({
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': tier,
    };
  }

  factory RpSkuResponse.fromMap(Map<String, dynamic> map) {
    return RpSkuResponse(
      name: map['name'] as String,
      tier: map['tier'] as String,
    );
  }
}

