// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of all network bandwidth tiers
class NetworkPerformanceConfigResponse4 {
  /// Specifies the total network bandwidth tier for the NodePool.
  final String totalEgressBandwidthTier;

  NetworkPerformanceConfigResponse4({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['totalEgressBandwidthTier'] = totalEgressBandwidthTier;
    return map;
  }

  factory NetworkPerformanceConfigResponse4.fromMap(Map<String, dynamic> map) {
    return NetworkPerformanceConfigResponse4(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}
