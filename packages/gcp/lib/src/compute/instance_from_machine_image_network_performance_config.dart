// ignore_for_file: unused_element, unnecessary_cast

class InstanceFromMachineImageNetworkPerformanceConfig {
  /// The egress bandwidth tier to enable. Possible values:TIER_1, DEFAULT
  final String totalEgressBandwidthTier;

  /// Creates a new [InstanceFromMachineImageNetworkPerformanceConfig].
  /// [totalEgressBandwidthTier] The egress bandwidth tier to enable. Possible values:TIER_1, DEFAULT
  InstanceFromMachineImageNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['totalEgressBandwidthTier'] = totalEgressBandwidthTier;
    return map;
  }

  factory InstanceFromMachineImageNetworkPerformanceConfig.fromMap(
      Map<String, dynamic> map) {
    return InstanceFromMachineImageNetworkPerformanceConfig(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}
