// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of all network bandwidth tiers
class ClusterNetworkPerformanceConfigResponseContainerV1beta1 {
  /// Specifies the total network bandwidth tier for the NodePool.
  final String totalEgressBandwidthTier;

  /// Creates a new [ClusterNetworkPerformanceConfigResponseContainerV1beta1].
  /// [totalEgressBandwidthTier] Specifies the total network bandwidth tier for the NodePool.
  ClusterNetworkPerformanceConfigResponseContainerV1beta1({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['totalEgressBandwidthTier'] = totalEgressBandwidthTier;
    return map;
  }

  factory ClusterNetworkPerformanceConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return ClusterNetworkPerformanceConfigResponseContainerV1beta1(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}
