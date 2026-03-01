// ignore_for_file: unused_element, unnecessary_cast


/// Represents the SKU name and Azure pricing tier for PowerBI Dedicated capacity resource.
class CapacitySkuResponse {
  /// The capacity of the SKU.
  final int? capacity;
  /// Name of the SKU level.
  final String name;
  /// The name of the Azure pricing tier to which the SKU applies.
  final String? tier;

  /// Creates a new [CapacitySkuResponse].
  /// [capacity] The capacity of the SKU.
  /// [name] Name of the SKU level.
  /// [tier] The name of the Azure pricing tier to which the SKU applies.
  CapacitySkuResponse({
    this.capacity,
    required this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': name,
      'tier': ?tier,
    };
  }

  factory CapacitySkuResponse.fromMap(Map<String, dynamic> map) {
    return CapacitySkuResponse(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      name: map['name'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

