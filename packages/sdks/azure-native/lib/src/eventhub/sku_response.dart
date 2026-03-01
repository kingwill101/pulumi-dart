// ignore_for_file: unused_element, unnecessary_cast


/// SKU parameters supplied to the create namespace operation
class SkuResponse {
  /// The Event Hubs throughput units for Basic or Standard tiers, where value should be 0 to 20 throughput units. The Event Hubs premium units for Premium tier, where value should be 0 to 10 premium units.
  final int? capacity;
  /// Name of this SKU.
  final String name;
  /// The billing tier of this particular SKU.
  final String? tier;

  /// Creates a new [SkuResponse].
  /// [capacity] The Event Hubs throughput units for Basic or Standard tiers, where value should be 0 to 20 throughput units. The Event Hubs premium units for Premium tier, where value should be 0 to 10 premium units.
  /// [name] Name of this SKU.
  /// [tier] The billing tier of this particular SKU.
  SkuResponse({
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

  factory SkuResponse.fromMap(Map<String, dynamic> map) {
    return SkuResponse(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      name: map['name'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

