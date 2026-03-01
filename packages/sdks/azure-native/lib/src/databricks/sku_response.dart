// ignore_for_file: unused_element, unnecessary_cast


/// SKU for the resource.
class SkuResponse {
  /// The SKU name.
  final String name;
  /// The SKU tier.
  final String? tier;

  /// Creates a new [SkuResponse].
  /// [name] The SKU name.
  /// [tier] The SKU tier.
  SkuResponse({
    required this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': ?tier,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      name: map['name'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

