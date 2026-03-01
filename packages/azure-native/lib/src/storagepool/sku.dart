// ignore_for_file: unused_element, unnecessary_cast


/// Sku for ARM resource
class Sku {
  /// Sku name
  final String name;
  /// Sku tier
  final String? tier;

  /// Creates a new [Sku].
  /// [name] Sku name
  /// [tier] Sku tier
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

