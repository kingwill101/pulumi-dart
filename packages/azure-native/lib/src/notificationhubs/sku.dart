// ignore_for_file: unused_element, unnecessary_cast


/// The Sku description for a namespace
class Sku {
  /// Gets or sets the capacity of the resource
  final int? capacity;
  /// Gets or sets the Sku Family
  final String? family;
  /// Namespace SKU name.
  final String name;
  /// Gets or sets the Sku size
  final String? size;
  /// Gets or sets the tier of particular sku
  final String? tier;

  /// Creates a new [Sku].
  /// [capacity] Gets or sets the capacity of the resource
  /// [family] Gets or sets the Sku Family
  /// [name] Namespace SKU name.
  /// [size] Gets or sets the Sku size
  /// [tier] Gets or sets the tier of particular sku
  Sku({
    this.capacity,
    this.family,
    required this.name,
    this.size,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'family': ?family,
      'name': name,
      'size': ?size,
      'tier': ?tier,
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      family: map['family'] == null ? null : map['family'] as String,
      name: map['name'] as String,
      size: map['size'] == null ? null : map['size'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

