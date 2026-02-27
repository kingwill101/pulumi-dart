// ignore_for_file: unused_element, unnecessary_cast

import 'network_performance_config_total_egress_bandwidth_tier_compute_v1.dart';

class NetworkPerformanceConfigComputeV1 {
  final NetworkPerformanceConfigTotalEgressBandwidthTierComputeV1?
      totalEgressBandwidthTier;

  NetworkPerformanceConfigComputeV1({
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

  factory NetworkPerformanceConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return NetworkPerformanceConfigComputeV1(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] == null
          ? null
          : NetworkPerformanceConfigTotalEgressBandwidthTierComputeV1.fromValue(
              map['totalEgressBandwidthTier'] as String),
    );
  }
}
