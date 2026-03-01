// ignore_for_file: unused_element, unnecessary_cast


/// The Sku description for a namespace
class SkuResponse {
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

  /// Creates a new [SkuResponse].
  /// [capacity] Gets or sets the capacity of the resource
  /// [family] Gets or sets the Sku Family
  /// [name] Namespace SKU name.
  /// [size] Gets or sets the Sku size
  /// [tier] Gets or sets the tier of particular sku
  SkuResponse({
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

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      family: map['family'] == null ? null : map['family'] as String,
      name: map['name'] as String,
      size: map['size'] == null ? null : map['size'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

