// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupMixedInstancesPolicyInstancesDistribution {
  /// Strategy used when launching on-demand instances.
  final pulumi.Input<String> onDemandAllocationStrategy;
  /// Absolute minimum amount of desired capacity that must be fulfilled by on-demand instances.
  final pulumi.Input<int> onDemandBaseCapacity;
  /// Percentages of On-Demand Instances and Spot Instances for your additional capacity beyond `onDemandBaseCapacity`.
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
  /// [onDemandPercentageAboveBaseCapacity] Percentages of On-Demand Instances and Spot Instances for your additional capacity beyond `onDemandBaseCapacity`.
  /// [spotAllocationStrategy] Strategy used when launching Spot instances.
  /// [spotInstancePools] Number of Spot pools per availability zone to allocate capacity.
  /// [spotMaxPrice] Maximum price per unit hour that the user is willing to pay for the Spot instances.
  const GetGroupMixedInstancesPolicyInstancesDistribution({
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
      onDemandAllocationStrategy: pulumi.Input.fromValue(map['onDemandAllocationStrategy'] as String),
      onDemandBaseCapacity: pulumi.Input.fromValue((map['onDemandBaseCapacity'] as num).toInt()),
      onDemandPercentageAboveBaseCapacity: pulumi.Input.fromValue((map['onDemandPercentageAboveBaseCapacity'] as num).toInt()),
      spotAllocationStrategy: pulumi.Input.fromValue(map['spotAllocationStrategy'] as String),
      spotInstancePools: pulumi.Input.fromValue((map['spotInstancePools'] as num).toInt()),
      spotMaxPrice: pulumi.Input.fromValue(map['spotMaxPrice'] as String),
    );
  }
}
