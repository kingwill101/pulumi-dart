// ignore_for_file: unused_element, unnecessary_cast


/// SKU for the resource.
class Sku {
  /// The SKU name.
  final String name;
  /// The SKU tier.
  final String? tier;

  /// Creates a new [Sku].
  /// [name] The SKU name.
  /// [tier] The SKU tier.
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

