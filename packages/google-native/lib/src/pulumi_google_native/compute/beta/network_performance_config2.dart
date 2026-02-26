// ignore_for_file: unused_element, unnecessary_cast

import 'network_performance_config_total_egress_bandwidth_tier2.dart';

class NetworkPerformanceConfig2 {
  final NetworkPerformanceConfigTotalEgressBandwidthTier2?
      totalEgressBandwidthTier;

  NetworkPerformanceConfig2({
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

  factory NetworkPerformanceConfig2.fromMap(Map<String, dynamic> map) {
    return NetworkPerformanceConfig2(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] == null
          ? null
          : NetworkPerformanceConfigTotalEgressBandwidthTier2.fromValue(
              map['totalEgressBandwidthTier'] as String),
    );
  }
}
