// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of all network bandwidth tiers
class NetworkPerformanceConfigResponseContainerV1beta1 {
  /// Specifies the network bandwidth tier for the NodePool for traffic to external/public IP addresses.
  final String externalIpEgressBandwidthTier;

  /// Specifies the total network bandwidth tier for the NodePool.
  final String totalEgressBandwidthTier;

  /// Creates a new [NetworkPerformanceConfigResponseContainerV1beta1].
  /// [externalIpEgressBandwidthTier] Specifies the network bandwidth tier for the NodePool for traffic to external/public IP addresses.
  /// [totalEgressBandwidthTier] Specifies the total network bandwidth tier for the NodePool.
  NetworkPerformanceConfigResponseContainerV1beta1({
    required this.externalIpEgressBandwidthTier,
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['externalIpEgressBandwidthTier'] = externalIpEgressBandwidthTier;
    map['totalEgressBandwidthTier'] = totalEgressBandwidthTier;
    return map;
  }

  factory NetworkPerformanceConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return NetworkPerformanceConfigResponseContainerV1beta1(
      externalIpEgressBandwidthTier:
          map['externalIpEgressBandwidthTier'] as String,
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}
