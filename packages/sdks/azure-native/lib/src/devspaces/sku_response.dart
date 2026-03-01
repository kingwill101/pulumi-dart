// ignore_for_file: unused_element, unnecessary_cast


/// Model representing SKU for Azure Dev Spaces Controller.
class SkuResponse {
  /// The name of the SKU for Azure Dev Spaces Controller.
  final String name;
  /// The tier of the SKU for Azure Dev Spaces Controller.
  final String? tier;

  /// Creates a new [SkuResponse].
  /// [name] The name of the SKU for Azure Dev Spaces Controller.
  /// [tier] The tier of the SKU for Azure Dev Spaces Controller.
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

