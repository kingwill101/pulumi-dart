// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceNetworkPerformanceConfig {
  /// The egress bandwidth tier for the instance.
  final String totalEgressBandwidthTier;

  GetInstanceNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['totalEgressBandwidthTier'] = totalEgressBandwidthTier;
    return map;
  }

  factory GetInstanceNetworkPerformanceConfig.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceNetworkPerformanceConfig(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}
