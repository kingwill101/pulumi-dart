// ignore_for_file: unused_element, unnecessary_cast


/// The SKU name. Required for account creation; optional for update.
class Sku {
  /// The sku name.
  final String name;
  /// The sku tier.
  final String? tier;

  /// Creates a new [Sku].
  /// [name] The sku name.
  /// [tier] The sku tier.
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

