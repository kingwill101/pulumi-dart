// ignore_for_file: unused_element, unnecessary_cast

import 'network_performance_config_total_egress_bandwidth_tier3.dart';

class NetworkPerformanceConfig3 {
  final NetworkPerformanceConfigTotalEgressBandwidthTier3?
      totalEgressBandwidthTier;

  NetworkPerformanceConfig3({
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

  factory NetworkPerformanceConfig3.fromMap(Map<String, dynamic> map) {
    return NetworkPerformanceConfig3(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] == null
          ? null
          : NetworkPerformanceConfigTotalEgressBandwidthTier3.fromValue(
              map['totalEgressBandwidthTier'] as String),
    );
  }
}
