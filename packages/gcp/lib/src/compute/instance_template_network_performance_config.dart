// ignore_for_file: unused_element, unnecessary_cast

class InstanceTemplateNetworkPerformanceConfig {
  /// The egress bandwidth tier to enable. Possible values: TIER_1, DEFAULT
  final String totalEgressBandwidthTier;

  /// Creates a new [InstanceTemplateNetworkPerformanceConfig].
  /// [totalEgressBandwidthTier] The egress bandwidth tier to enable. Possible values: TIER_1, DEFAULT
  InstanceTemplateNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': totalEgressBandwidthTier,
    };
  }

  factory InstanceTemplateNetworkPerformanceConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceTemplateNetworkPerformanceConfig(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}
