// ignore_for_file: unused_element, unnecessary_cast

class GroupAvailabilityZoneDistribution {
  /// The strategy to use for distributing capacity across the Availability Zones. Valid values are `balanced-only` and `balanced-best-effort`. Default is `balanced-best-effort`.
  final String? capacityDistributionStrategy;

  GroupAvailabilityZoneDistribution({
    this.capacityDistributionStrategy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final capacityDistributionStrategyValue = capacityDistributionStrategy;
    if (capacityDistributionStrategyValue != null) {
      map['capacityDistributionStrategy'] = capacityDistributionStrategyValue;
    }
    return map;
  }

  factory GroupAvailabilityZoneDistribution.fromMap(Map<String, dynamic> map) {
    return GroupAvailabilityZoneDistribution(
      capacityDistributionStrategy: map['capacityDistributionStrategy'] == null
          ? null
          : map['capacityDistributionStrategy'] as String,
    );
  }
}
