// ignore_for_file: unused_element, unnecessary_cast

class InstanceNetworkPerformanceConfig {
  /// The egress bandwidth tier to enable.
  /// Possible values: TIER_1, DEFAULT
  final String totalEgressBandwidthTier;

  /// Creates a new [InstanceNetworkPerformanceConfig].
  /// [totalEgressBandwidthTier] The egress bandwidth tier to enable.
  InstanceNetworkPerformanceConfig({required this.totalEgressBandwidthTier});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': totalEgressBandwidthTier,
    };
  }

  factory InstanceNetworkPerformanceConfig.fromMap(Map<String, dynamic> map) {
    return InstanceNetworkPerformanceConfig(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}
