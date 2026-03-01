// ignore_for_file: unused_element, unnecessary_cast

class InstanceFromTemplateNetworkPerformanceConfig {
  /// The egress bandwidth tier to enable. Possible values:TIER_1, DEFAULT
  final String totalEgressBandwidthTier;

  /// Creates a new [InstanceFromTemplateNetworkPerformanceConfig].
  /// [totalEgressBandwidthTier] The egress bandwidth tier to enable. Possible values:TIER_1, DEFAULT
  InstanceFromTemplateNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': totalEgressBandwidthTier,
    };
  }

  factory InstanceFromTemplateNetworkPerformanceConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceFromTemplateNetworkPerformanceConfig(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}
