// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of all network bandwidth tiers
class NetworkPerformanceConfigResponse5 {
  /// Specifies the network bandwidth tier for the NodePool for traffic to external/public IP addresses.
  final String externalIpEgressBandwidthTier;

  /// Specifies the total network bandwidth tier for the NodePool.
  final String totalEgressBandwidthTier;

  NetworkPerformanceConfigResponse5({
    required this.externalIpEgressBandwidthTier,
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['externalIpEgressBandwidthTier'] = externalIpEgressBandwidthTier;
    map['totalEgressBandwidthTier'] = totalEgressBandwidthTier;
    return map;
  }

  factory NetworkPerformanceConfigResponse5.fromMap(Map<String, dynamic> map) {
    return NetworkPerformanceConfigResponse5(
      externalIpEgressBandwidthTier:
          map['externalIpEgressBandwidthTier'] as String,
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}
