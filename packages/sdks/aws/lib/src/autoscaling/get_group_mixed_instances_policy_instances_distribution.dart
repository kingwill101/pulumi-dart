// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupMixedInstancesPolicyInstancesDistribution {
  /// Strategy used when launching on-demand instances.
  final pulumi.Input<String> onDemandAllocationStrategy;
  /// Absolute minimum amount of desired capacity that must be fulfilled by on-demand instances.
  final pulumi.Input<int> onDemandBaseCapacity;
  final pulumi.Input<int> onDemandPercentageAboveBaseCapacity;
  /// Strategy used when launching Spot instances.
  final pulumi.Input<String> spotAllocationStrategy;
  /// Number of Spot pools per availability zone to allocate capacity.
  final pulumi.Input<int> spotInstancePools;
  /// Maximum price per unit hour that the user is willing to pay for the Spot instances.
  final pulumi.Input<String> spotMaxPrice;

  /// Creates a new [GetGroupMixedInstancesPolicyInstancesDistribution].
  /// [onDemandAllocationStrategy] Strategy used when launching on-demand instances.
  /// [onDemandBaseCapacity] Absolute minimum amount of desired capacity that must be fulfilled by on-demand instances.
  /// [onDemandPercentageAboveBaseCapacity] Required.
  /// [spotAllocationStrategy] Strategy used when launching Spot instances.
  /// [spotInstancePools] Number of Spot pools per availability zone to allocate capacity.
  /// [spotMaxPrice] Maximum price per unit hour that the user is willing to pay for the Spot instances.
  GetGroupMixedInstancesPolicyInstancesDistribution({
    required this.onDemandAllocationStrategy,
    required this.onDemandBaseCapacity,
    required this.onDemandPercentageAboveBaseCapacity,
    required this.spotAllocationStrategy,
    required this.spotInstancePools,
    required this.spotMaxPrice,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onDemandAllocationStrategy': onDemandAllocationStrategy,
      'onDemandBaseCapacity': onDemandBaseCapacity,
      'onDemandPercentageAboveBaseCapacity': onDemandPercentageAboveBaseCapacity,
      'spotAllocationStrategy': spotAllocationStrategy,
      'spotInstancePools': spotInstancePools,
      'spotMaxPrice': spotMaxPrice,
    };
  }

  factory GetGroupMixedInstancesPolicyInstancesDistribution.fromMap(Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicyInstancesDistribution(
      onDemandAllocationStrategy: (map['onDemandAllocationStrategy'] as String).input(),
      onDemandBaseCapacity: (map['onDemandBaseCapacity'] as int).input(),
      onDemandPercentageAboveBaseCapacity: (map['onDemandPercentageAboveBaseCapacity'] as int).input(),
      spotAllocationStrategy: (map['spotAllocationStrategy'] as String).input(),
      spotInstancePools: (map['spotInstancePools'] as int).input(),
      spotMaxPrice: (map['spotMaxPrice'] as String).input(),
    );
  }
}

