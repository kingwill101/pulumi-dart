// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNetworkConfigNetworkPerformanceConfig {
  /// Specifies the total network bandwidth tier for NodePools in the cluster.
  final String totalEgressBandwidthTier;

  ClusterNodePoolNetworkConfigNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['totalEgressBandwidthTier'] = totalEgressBandwidthTier;
    return map;
  }

  factory ClusterNodePoolNetworkConfigNetworkPerformanceConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolNetworkConfigNetworkPerformanceConfig(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}
