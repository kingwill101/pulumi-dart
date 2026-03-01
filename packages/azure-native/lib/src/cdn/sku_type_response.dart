// ignore_for_file: unused_element, unnecessary_cast


/// The SKU type for the edge action
class SkuTypeResponse {
  /// The name of the SKU
  final String name;
  /// The tier of the SKU
  final String tier;

  /// Creates a new [SkuTypeResponse].
  /// [name] The name of the SKU
  /// [tier] The tier of the SKU
  SkuTypeResponse({
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': tier,
    };
  }

  factory SkuTypeResponse.fromMap(Map<String, dynamic> map) {
    return SkuTypeResponse(
      name: map['name'] as String,
      tier: map['tier'] as String,
    );
  }
}

