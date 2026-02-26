// ignore_for_file: unused_element, unnecessary_cast

class RestoreWorkloadComputeInstanceRestorePropertiesNetworkPerformanceConfig {
  /// Possible values are: `TIER_UNSPECIFIED`, `DEFAULT`, `TIER_1`.
  final String? totalEgressBandwidthTier;

  RestoreWorkloadComputeInstanceRestorePropertiesNetworkPerformanceConfig({
    this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final totalEgressBandwidthTierValue = totalEgressBandwidthTier;
    if (totalEgressBandwidthTierValue != null) {
      map['totalEgressBandwidthTier'] = totalEgressBandwidthTierValue;
    }
    return map;
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesNetworkPerformanceConfig.fromMap(
      Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesNetworkPerformanceConfig(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] == null
          ? null
          : map['totalEgressBandwidthTier'] as String,
    );
  }
}
