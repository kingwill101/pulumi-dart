// ignore_for_file: unused_element, unnecessary_cast

class GetGroupMixedInstancesPolicyInstancesDistribution {
  /// Strategy used when launching on-demand instances.
  final String onDemandAllocationStrategy;

  /// Absolute minimum amount of desired capacity that must be fulfilled by on-demand instances.
  final int onDemandBaseCapacity;
  final int onDemandPercentageAboveBaseCapacity;

  /// Strategy used when launching Spot instances.
  final String spotAllocationStrategy;

  /// Number of Spot pools per availability zone to allocate capacity.
  final int spotInstancePools;

  /// Maximum price per unit hour that the user is willing to pay for the Spot instances.
  final String spotMaxPrice;

  GetGroupMixedInstancesPolicyInstancesDistribution({
    required this.onDemandAllocationStrategy,
    required this.onDemandBaseCapacity,
    required this.onDemandPercentageAboveBaseCapacity,
    required this.spotAllocationStrategy,
    required this.spotInstancePools,
    required this.spotMaxPrice,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['onDemandAllocationStrategy'] = onDemandAllocationStrategy;
    map['onDemandBaseCapacity'] = onDemandBaseCapacity;
    map['onDemandPercentageAboveBaseCapacity'] =
        onDemandPercentageAboveBaseCapacity;
    map['spotAllocationStrategy'] = spotAllocationStrategy;
    map['spotInstancePools'] = spotInstancePools;
    map['spotMaxPrice'] = spotMaxPrice;
    return map;
  }

  factory GetGroupMixedInstancesPolicyInstancesDistribution.fromMap(
      Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicyInstancesDistribution(
      onDemandAllocationStrategy: map['onDemandAllocationStrategy'] as String,
      onDemandBaseCapacity: map['onDemandBaseCapacity'] as int,
      onDemandPercentageAboveBaseCapacity:
          map['onDemandPercentageAboveBaseCapacity'] as int,
      spotAllocationStrategy: map['spotAllocationStrategy'] as String,
      spotInstancePools: map['spotInstancePools'] as int,
      spotMaxPrice: map['spotMaxPrice'] as String,
    );
  }
}
