// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of all network bandwidth tiers
class ClusterNetworkPerformanceConfigResponse2 {
  /// Specifies the total network bandwidth tier for the NodePool.
  final String totalEgressBandwidthTier;

  ClusterNetworkPerformanceConfigResponse2({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['totalEgressBandwidthTier'] = totalEgressBandwidthTier;
    return map;
  }

  factory ClusterNetworkPerformanceConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return ClusterNetworkPerformanceConfigResponse2(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}
