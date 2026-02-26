// ignore_for_file: unused_element, unnecessary_cast

class InstanceNetworkPerformanceConfig {
  /// The egress bandwidth tier to enable.
  /// Possible values: TIER_1, DEFAULT
  final String totalEgressBandwidthTier;

  InstanceNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['totalEgressBandwidthTier'] = totalEgressBandwidthTier;
    return map;
  }

  factory InstanceNetworkPerformanceConfig.fromMap(Map<String, dynamic> map) {
    return InstanceNetworkPerformanceConfig(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}
