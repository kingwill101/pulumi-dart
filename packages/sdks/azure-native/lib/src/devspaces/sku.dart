// ignore_for_file: unused_element, unnecessary_cast


/// Model representing SKU for Azure Dev Spaces Controller.
class Sku {
  /// The name of the SKU for Azure Dev Spaces Controller.
  final String name;
  /// The tier of the SKU for Azure Dev Spaces Controller.
  final String? tier;

  /// Creates a new [Sku].
  /// [name] The name of the SKU for Azure Dev Spaces Controller.
  /// [tier] The tier of the SKU for Azure Dev Spaces Controller.
  Sku({
    required this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': ?tier,
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      name: map['name'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

