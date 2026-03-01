// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of network bandwidth tiers
class ClusterNetworkPerformanceConfigResponse {
  /// Specifies the total network bandwidth tier for NodePools in the cluster.
  final String totalEgressBandwidthTier;

  /// Creates a new [ClusterNetworkPerformanceConfigResponse].
  /// [totalEgressBandwidthTier] Specifies the total network bandwidth tier for NodePools in the cluster.
  ClusterNetworkPerformanceConfigResponse({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': totalEgressBandwidthTier,
    };
  }

  factory ClusterNetworkPerformanceConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNetworkPerformanceConfigResponse(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}
