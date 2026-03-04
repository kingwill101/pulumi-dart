// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupMixedInstancesPolicyInstancesDistribution {
  /// Strategy to use when launching on-demand instances. Valid values: `prioritized`, `lowest-price`. Default: `prioritized`.
  final pulumi.Input<String>? onDemandAllocationStrategy;

  /// Absolute minimum amount of desired capacity that must be fulfilled by on-demand instances. Default: `0`.
  final pulumi.Input<int>? onDemandBaseCapacity;

  /// Percentage split between on-demand and Spot instances above the base on-demand capacity. Default: `100`.
  final pulumi.Input<int>? onDemandPercentageAboveBaseCapacity;

  /// How to allocate capacity across the Spot pools. Valid values: `lowest-price`, `capacity-optimized`, `capacity-optimized-prioritized`, and `price-capacity-optimized`. Default: `lowest-price`.
  final pulumi.Input<String>? spotAllocationStrategy;

  /// Number of Spot pools per availability zone to allocate capacity. EC2 Auto Scaling selects the cheapest Spot pools and evenly allocates Spot capacity across the number of Spot pools that you specify. Only available with `spot_allocation_strategy` set to `lowest-price`. Otherwise it must be set to `0`, if it has been defined before. Default: `2`.
  final pulumi.Input<int>? spotInstancePools;

  /// Maximum price per unit hour that the user is willing to pay for the Spot instances. Default: an empty string which means the on-demand price.
  final pulumi.Input<String>? spotMaxPrice;

  /// Creates a new [GroupMixedInstancesPolicyInstancesDistribution].
  /// [onDemandAllocationStrategy] Strategy to use when launching on-demand instances. Valid values: `prioritized`, `lowest-price`. Default: `prioritized`.
  /// [onDemandBaseCapacity] Absolute minimum amount of desired capacity that must be fulfilled by on-demand instances. Default: `0`.
  /// [onDemandPercentageAboveBaseCapacity] Percentage split between on-demand and Spot instances above the base on-demand capacity. Default: `100`.
  /// [spotAllocationStrategy] How to allocate capacity across the Spot pools. Valid values: `lowest-price`, `capacity-optimized`, `capacity-optimized-prioritized`, and `price-capacity-optimized`. Default: `lowest-price`.
  /// [spotInstancePools] Number of Spot pools per availability zone to allocate capacity. EC2 Auto Scaling selects the cheapest Spot pools and evenly allocates Spot capacity across the number of Spot pools that you specify. Only available with `spot_allocation_strategy` set to `lowest-price`. Otherwise it must be set to `0`, if it has been defined before. Default: `2`.
  /// [spotMaxPrice] Maximum price per unit hour that the user is willing to pay for the Spot instances. Default: an empty string which means the on-demand price.
  GroupMixedInstancesPolicyInstancesDistribution({
    this.onDemandAllocationStrategy,
    this.onDemandBaseCapacity,
    this.onDemandPercentageAboveBaseCapacity,
    this.spotAllocationStrategy,
    this.spotInstancePools,
    this.spotMaxPrice,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onDemandAllocationStrategy': ?onDemandAllocationStrategy,
      'onDemandBaseCapacity': ?onDemandBaseCapacity,
      'onDemandPercentageAboveBaseCapacity':
          ?onDemandPercentageAboveBaseCapacity,
      'spotAllocationStrategy': ?spotAllocationStrategy,
      'spotInstancePools': ?spotInstancePools,
      'spotMaxPrice': ?spotMaxPrice,
    };
  }

  factory GroupMixedInstancesPolicyInstancesDistribution.fromMap(
    Map<String, dynamic> map,
  ) {
    return GroupMixedInstancesPolicyInstancesDistribution(
      onDemandAllocationStrategy: (() {
        final guardedValue = map['onDemandAllocationStrategy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      onDemandBaseCapacity: (() {
        final guardedValue = map['onDemandBaseCapacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      onDemandPercentageAboveBaseCapacity: (() {
        final guardedValue = map['onDemandPercentageAboveBaseCapacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      spotAllocationStrategy: (() {
        final guardedValue = map['spotAllocationStrategy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      spotInstancePools: (() {
        final guardedValue = map['spotInstancePools'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      spotMaxPrice: (() {
        final guardedValue = map['spotMaxPrice'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
