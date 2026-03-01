// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNetworkConfigNetworkPerformanceConfig {
  /// Specifies the total network bandwidth tier for NodePools in the cluster.
  final String totalEgressBandwidthTier;

  /// Creates a new [ClusterNodePoolNetworkConfigNetworkPerformanceConfig].
  /// [totalEgressBandwidthTier] Specifies the total network bandwidth tier for NodePools in the cluster.
  ClusterNodePoolNetworkConfigNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': totalEgressBandwidthTier,
    };
  }

  factory ClusterNodePoolNetworkConfigNetworkPerformanceConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodePoolNetworkConfigNetworkPerformanceConfig(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}
