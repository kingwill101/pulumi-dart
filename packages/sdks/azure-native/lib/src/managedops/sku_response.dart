// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the service plan for this resource.
class SkuResponse {
  /// Name of the SKU.
  final String name;
  /// Pricing tier of the SKU.
  final String tier;

  /// Creates a new [SkuResponse].
  /// [name] Name of the SKU.
  /// [tier] Pricing tier of the SKU.
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

