// ignore_for_file: unused_element, unnecessary_cast

class ClusterNetworkPerformanceConfig {
  /// Specifies the total network bandwidth tier for NodePools in the cluster.
  final String totalEgressBandwidthTier;

  /// Creates a new [ClusterNetworkPerformanceConfig].
  /// [totalEgressBandwidthTier] Specifies the total network bandwidth tier for NodePools in the cluster.
  ClusterNetworkPerformanceConfig({required this.totalEgressBandwidthTier});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': totalEgressBandwidthTier,
    };
  }

  factory ClusterNetworkPerformanceConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNetworkPerformanceConfig(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}
