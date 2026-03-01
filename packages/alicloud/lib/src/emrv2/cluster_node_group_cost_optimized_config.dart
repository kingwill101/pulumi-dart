// ignore_for_file: unused_element, unnecessary_cast


class ClusterNodeGroupCostOptimizedConfig {
  /// The cost optimized configuration which on demand based capacity.
  final int onDemandBaseCapacity;
  /// The cost optimized configuration which on demand percentage above based capacity.
  final int onDemandPercentageAboveBaseCapacity;
  /// The cost optimized configuration with spot instance pools.
  final int spotInstancePools;

  /// Creates a new [ClusterNodeGroupCostOptimizedConfig].
  /// [onDemandBaseCapacity] The cost optimized configuration which on demand based capacity.
  /// [onDemandPercentageAboveBaseCapacity] The cost optimized configuration which on demand percentage above based capacity.
  /// [spotInstancePools] The cost optimized configuration with spot instance pools.
  ClusterNodeGroupCostOptimizedConfig({
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
      onDemandBaseCapacity: map['onDemandBaseCapacity'] as int,
      onDemandPercentageAboveBaseCapacity: map['onDemandPercentageAboveBaseCapacity'] as int,
      spotInstancePools: map['spotInstancePools'] as int,
    );
  }
}

