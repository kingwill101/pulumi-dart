// ignore_for_file: unused_element, unnecessary_cast


/// SKU of the namespace.
class SBSkuResponse {
  /// Messaging units for your service bus premium namespace. Valid capacities are {1, 2, 4, 8, 16} multiples of your properties.premiumMessagingPartitions setting. For example, If properties.premiumMessagingPartitions is 1 then possible capacity values are 1, 2, 4, 8, and 16. If properties.premiumMessagingPartitions is 4 then possible capacity values are 4, 8, 16, 32 and 64
  final int? capacity;
  /// Name of this SKU.
  final String name;
  /// The billing tier of this particular SKU.
  final String? tier;

  /// Creates a new [SBSkuResponse].
  /// [capacity] Messaging units for your service bus premium namespace. Valid capacities are {1, 2, 4, 8, 16} multiples of your properties.premiumMessagingPartitions setting. For example, If properties.premiumMessagingPartitions is 1 then possible capacity values are 1, 2, 4, 8, and 16. If properties.premiumMessagingPartitions is 4 then possible capacity values are 4, 8, 16, 32 and 64
  /// [name] Name of this SKU.
  /// [tier] The billing tier of this particular SKU.
  SBSkuResponse({
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

  factory SBSkuResponse.fromMap(Map<String, dynamic> map) {
    return SBSkuResponse(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      name: map['name'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

