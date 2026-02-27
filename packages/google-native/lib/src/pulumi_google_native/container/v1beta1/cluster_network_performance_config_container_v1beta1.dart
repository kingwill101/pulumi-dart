// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_network_performance_config_total_egress_bandwidth_tier_container_v1beta1.dart';

/// Configuration of all network bandwidth tiers
class ClusterNetworkPerformanceConfigContainerV1beta1 {
  /// Specifies the total network bandwidth tier for the NodePool.
  final ClusterNetworkPerformanceConfigTotalEgressBandwidthTierContainerV1beta1?
      totalEgressBandwidthTier;

  ClusterNetworkPerformanceConfigContainerV1beta1({
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

  factory ClusterNetworkPerformanceConfigContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return ClusterNetworkPerformanceConfigContainerV1beta1(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] == null
          ? null
          : ClusterNetworkPerformanceConfigTotalEgressBandwidthTierContainerV1beta1
              .fromValue(map['totalEgressBandwidthTier'] as String),
    );
  }
}
