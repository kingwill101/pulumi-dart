// ignore_for_file: unused_element, unnecessary_cast

class GroupMixedInstancesPolicyInstancesDistribution {
  /// Strategy to use when launching on-demand instances. Valid values: <span pulumi-lang-nodejs="`prioritized`" pulumi-lang-dotnet="`Prioritized`" pulumi-lang-go="`prioritized`" pulumi-lang-python="`prioritized`" pulumi-lang-yaml="`prioritized`" pulumi-lang-java="`prioritized`">`prioritized`</span>, `lowest-price`. Default: <span pulumi-lang-nodejs="`prioritized`" pulumi-lang-dotnet="`Prioritized`" pulumi-lang-go="`prioritized`" pulumi-lang-python="`prioritized`" pulumi-lang-yaml="`prioritized`" pulumi-lang-java="`prioritized`">`prioritized`</span>.
  final String? onDemandAllocationStrategy;

  /// Absolute minimum amount of desired capacity that must be fulfilled by on-demand instances. Default: <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>.
  final int? onDemandBaseCapacity;

  /// Percentage split between on-demand and Spot instances above the base on-demand capacity. Default: <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span>.
  final int? onDemandPercentageAboveBaseCapacity;

  /// How to allocate capacity across the Spot pools. Valid values: `lowest-price`, `capacity-optimized`, `capacity-optimized-prioritized`, and `price-capacity-optimized`. Default: `lowest-price`.
  final String? spotAllocationStrategy;

  /// Number of Spot pools per availability zone to allocate capacity. EC2 Auto Scaling selects the cheapest Spot pools and evenly allocates Spot capacity across the number of Spot pools that you specify. Only available with <span pulumi-lang-nodejs="`spotAllocationStrategy`" pulumi-lang-dotnet="`SpotAllocationStrategy`" pulumi-lang-go="`spotAllocationStrategy`" pulumi-lang-python="`spot_allocation_strategy`" pulumi-lang-yaml="`spotAllocationStrategy`" pulumi-lang-java="`spotAllocationStrategy`">`spot_allocation_strategy`</span> set to `lowest-price`. Otherwise it must be set to <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>, if it has been defined before. Default: <span pulumi-lang-nodejs="`2`" pulumi-lang-dotnet="`2`" pulumi-lang-go="`2`" pulumi-lang-python="`2`" pulumi-lang-yaml="`2`" pulumi-lang-java="`2`">`2`</span>.
  final int? spotInstancePools;

  /// Maximum price per unit hour that the user is willing to pay for the Spot instances. Default: an empty string which means the on-demand price.
  final String? spotMaxPrice;

  GroupMixedInstancesPolicyInstancesDistribution({
    this.onDemandAllocationStrategy,
    this.onDemandBaseCapacity,
    this.onDemandPercentageAboveBaseCapacity,
    this.spotAllocationStrategy,
    this.spotInstancePools,
    this.spotMaxPrice,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final onDemandAllocationStrategyValue = onDemandAllocationStrategy;
    if (onDemandAllocationStrategyValue != null) {
      map['onDemandAllocationStrategy'] = onDemandAllocationStrategyValue;
    }
    final onDemandBaseCapacityValue = onDemandBaseCapacity;
    if (onDemandBaseCapacityValue != null) {
      map['onDemandBaseCapacity'] = onDemandBaseCapacityValue;
    }
    final onDemandPercentageAboveBaseCapacityValue =
        onDemandPercentageAboveBaseCapacity;
    if (onDemandPercentageAboveBaseCapacityValue != null) {
      map['onDemandPercentageAboveBaseCapacity'] =
          onDemandPercentageAboveBaseCapacityValue;
    }
    final spotAllocationStrategyValue = spotAllocationStrategy;
    if (spotAllocationStrategyValue != null) {
      map['spotAllocationStrategy'] = spotAllocationStrategyValue;
    }
    final spotInstancePoolsValue = spotInstancePools;
    if (spotInstancePoolsValue != null) {
      map['spotInstancePools'] = spotInstancePoolsValue;
    }
    final spotMaxPriceValue = spotMaxPrice;
    if (spotMaxPriceValue != null) {
      map['spotMaxPrice'] = spotMaxPriceValue;
    }
    return map;
  }

  factory GroupMixedInstancesPolicyInstancesDistribution.fromMap(
      Map<String, dynamic> map) {
    return GroupMixedInstancesPolicyInstancesDistribution(
      onDemandAllocationStrategy: map['onDemandAllocationStrategy'] == null
          ? null
          : map['onDemandAllocationStrategy'] as String,
      onDemandBaseCapacity: map['onDemandBaseCapacity'] == null
          ? null
          : map['onDemandBaseCapacity'] as int,
      onDemandPercentageAboveBaseCapacity:
          map['onDemandPercentageAboveBaseCapacity'] == null
              ? null
              : map['onDemandPercentageAboveBaseCapacity'] as int,
      spotAllocationStrategy: map['spotAllocationStrategy'] == null
          ? null
          : map['spotAllocationStrategy'] as String,
      spotInstancePools: map['spotInstancePools'] == null
          ? null
          : map['spotInstancePools'] as int,
      spotMaxPrice:
          map['spotMaxPrice'] == null ? null : map['spotMaxPrice'] as String,
    );
  }
}
