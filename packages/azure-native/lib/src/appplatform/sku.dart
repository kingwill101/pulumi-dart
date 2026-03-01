// ignore_for_file: unused_element, unnecessary_cast


/// Sku of Azure Spring Apps
class Sku {
  /// Current capacity of the target resource
  final int? capacity;
  /// Name of the Sku
  final String? name;
  /// Tier of the Sku
  final String? tier;

  /// Creates a new [Sku].
  /// [capacity] Current capacity of the target resource
  /// [name] Name of the Sku
  /// [tier] Tier of the Sku
  Sku({
    this.capacity,
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

