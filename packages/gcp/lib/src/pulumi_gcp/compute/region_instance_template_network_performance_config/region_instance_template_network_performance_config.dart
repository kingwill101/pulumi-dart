// ignore_for_file: unused_element, unnecessary_cast

class RegionInstanceTemplateNetworkPerformanceConfig {
  /// The egress bandwidth tier to enable. Possible values: TIER_1, DEFAULT
  final String totalEgressBandwidthTier;

  RegionInstanceTemplateNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['totalEgressBandwidthTier'] = totalEgressBandwidthTier;
    return map;
  }

  factory RegionInstanceTemplateNetworkPerformanceConfig.fromMap(
      Map<String, dynamic> map) {
    return RegionInstanceTemplateNetworkPerformanceConfig(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}
