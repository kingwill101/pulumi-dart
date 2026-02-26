// ignore_for_file: unused_element, unnecessary_cast

import 'network_performance_config_total_egress_bandwidth_tier4.dart';

/// Configuration of all network bandwidth tiers
class NetworkPerformanceConfig4 {
  /// Specifies the total network bandwidth tier for the NodePool.
  final NetworkPerformanceConfigTotalEgressBandwidthTier4?
      totalEgressBandwidthTier;

  NetworkPerformanceConfig4({
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

  factory NetworkPerformanceConfig4.fromMap(Map<String, dynamic> map) {
    return NetworkPerformanceConfig4(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] == null
          ? null
          : NetworkPerformanceConfigTotalEgressBandwidthTier4.fromValue(
              map['totalEgressBandwidthTier'] as String),
    );
  }
}
