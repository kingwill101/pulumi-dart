// ignore_for_file: unused_element, unnecessary_cast


/// Identifies the unique system identifier for each Azure resource.
class SkuResponse {
  /// The sku capacity
  final String? capacity;
  /// The sku family
  final String? family;
  /// Name of SKU is RS0 (Recovery Services 0th version) and the tier is standard tier. They do not have affect on backend storage redundancy or any other vault settings. To manage storage redundancy, use the backupstorageconfig
  final String name;
  /// The sku size
  final String? size;
  /// The Sku tier.
  final String? tier;

  /// Creates a new [SkuResponse].
  /// [capacity] The sku capacity
  /// [family] The sku family
  /// [name] Name of SKU is RS0 (Recovery Services 0th version) and the tier is standard tier. They do not have affect on backend storage redundancy or any other vault settings. To manage storage redundancy, use the backupstorageconfig
  /// [size] The sku size
  /// [tier] The Sku tier.
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
      capacity: map['capacity'] == null ? null : map['capacity'] as String,
      family: map['family'] == null ? null : map['family'] as String,
      name: map['name'] as String,
      size: map['size'] == null ? null : map['size'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

