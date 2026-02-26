// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of network bandwidth tiers
class ClusterNetworkPerformanceConfigResponse {
  /// Specifies the total network bandwidth tier for NodePools in the cluster.
  final String totalEgressBandwidthTier;

  ClusterNetworkPerformanceConfigResponse({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['totalEgressBandwidthTier'] = totalEgressBandwidthTier;
    return map;
  }

  factory ClusterNetworkPerformanceConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return ClusterNetworkPerformanceConfigResponse(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}
