// ignore_for_file: unused_element, unnecessary_cast


/// The SKU type.
class SkuResponse {
  /// SKU name.
  final String? name;
  /// The SKU tier. This is based on the SKU name.
  final String? tier;

  /// Creates a new [SkuResponse].
  /// [name] SKU name.
  /// [tier] The SKU tier. This is based on the SKU name.
  SkuResponse({
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      name: map['name'] == null ? null : map['name'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

