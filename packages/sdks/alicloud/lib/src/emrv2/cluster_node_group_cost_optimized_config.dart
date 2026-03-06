// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeGroupCostOptimizedConfig {
  /// The cost optimized configuration which on demand based capacity.
  final pulumi.Input<int> onDemandBaseCapacity;
  /// The cost optimized configuration which on demand percentage above based capacity.
  final pulumi.Input<int> onDemandPercentageAboveBaseCapacity;
  /// The cost optimized configuration with spot instance pools.
  final pulumi.Input<int> spotInstancePools;

  /// Creates a new [ClusterNodeGroupCostOptimizedConfig].
  /// [onDemandBaseCapacity] The cost optimized configuration which on demand based capacity.
  /// [onDemandPercentageAboveBaseCapacity] The cost optimized configuration which on demand percentage above based capacity.
  /// [spotInstancePools] The cost optimized configuration with spot instance pools.
  const ClusterNodeGroupCostOptimizedConfig({
    required this.onDemandBaseCapacity,
    required this.onDemandPercentageAboveBaseCapacity,
    required this.spotInstancePools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onDemandBaseCapacity': onDemandBaseCapacity,
      'onDemandPercentageAboveBaseCapacity': onDemandPercentageAboveBaseCapacity,
      'spotInstancePools': spotInstancePools,
    };
  }

  factory ClusterNodeGroupCostOptimizedConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroupCostOptimizedConfig(
      onDemandBaseCapacity: pulumi.Input.fromValue(map['onDemandBaseCapacity'] as int),
      onDemandPercentageAboveBaseCapacity: pulumi.Input.fromValue(map['onDemandPercentageAboveBaseCapacity'] as int),
      spotInstancePools: pulumi.Input.fromValue(map['spotInstancePools'] as int),
    );
  }
}

