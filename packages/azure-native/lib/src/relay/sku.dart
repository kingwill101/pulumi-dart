// ignore_for_file: unused_element, unnecessary_cast


/// SKU of the namespace.
class Sku {
  /// Name of this SKU.
  final String name;
  /// The tier of this SKU.
  final String? tier;

  /// Creates a new [Sku].
  /// [name] Name of this SKU.
  /// [tier] The tier of this SKU.
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

