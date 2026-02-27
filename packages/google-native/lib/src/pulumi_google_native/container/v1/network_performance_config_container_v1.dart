// ignore_for_file: unused_element, unnecessary_cast

import 'network_performance_config_total_egress_bandwidth_tier_container_v1.dart';

/// Configuration of all network bandwidth tiers
class NetworkPerformanceConfigContainerV1 {
  /// Specifies the total network bandwidth tier for the NodePool.
  final NetworkPerformanceConfigTotalEgressBandwidthTierContainerV1?
      totalEgressBandwidthTier;

  NetworkPerformanceConfigContainerV1({
    this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final totalEgressBandwidthTierValue = totalEgressBandwidthTier;
    if (totalEgressBandwidthTierValue != null) {
      map['totalEgressBandwidthTier'] = totalEgressBandwidthTierValue.value;
    }
    return map;
  }

  factory NetworkPerformanceConfigContainerV1.fromMap(
      Map<String, dynamic> map) {
    return NetworkPerformanceConfigContainerV1(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] == null
          ? null
          : NetworkPerformanceConfigTotalEgressBandwidthTierContainerV1
              .fromValue(map['totalEgressBandwidthTier'] as String),
    );
  }
}
