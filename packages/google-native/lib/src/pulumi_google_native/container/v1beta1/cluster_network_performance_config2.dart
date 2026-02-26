// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_network_performance_config_total_egress_bandwidth_tier2.dart';

/// Configuration of all network bandwidth tiers
class ClusterNetworkPerformanceConfig2 {
  /// Specifies the total network bandwidth tier for the NodePool.
  final ClusterNetworkPerformanceConfigTotalEgressBandwidthTier2?
      totalEgressBandwidthTier;

  ClusterNetworkPerformanceConfig2({
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

  factory ClusterNetworkPerformanceConfig2.fromMap(Map<String, dynamic> map) {
    return ClusterNetworkPerformanceConfig2(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] == null
          ? null
          : ClusterNetworkPerformanceConfigTotalEgressBandwidthTier2.fromValue(
              map['totalEgressBandwidthTier'] as String),
    );
  }
}
