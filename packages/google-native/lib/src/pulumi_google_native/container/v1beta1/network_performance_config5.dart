// ignore_for_file: unused_element, unnecessary_cast

import 'network_performance_config_external_ip_egress_bandwidth_tier2.dart';
import 'network_performance_config_total_egress_bandwidth_tier5.dart';

/// Configuration of all network bandwidth tiers
class NetworkPerformanceConfig5 {
  /// Specifies the network bandwidth tier for the NodePool for traffic to external/public IP addresses.
  final NetworkPerformanceConfigExternalIpEgressBandwidthTier2?
      externalIpEgressBandwidthTier;

  /// Specifies the total network bandwidth tier for the NodePool.
  final NetworkPerformanceConfigTotalEgressBandwidthTier5?
      totalEgressBandwidthTier;

  NetworkPerformanceConfig5({
    this.externalIpEgressBandwidthTier,
    this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final externalIpEgressBandwidthTierValue = externalIpEgressBandwidthTier;
    if (externalIpEgressBandwidthTierValue != null) {
      map['externalIpEgressBandwidthTier'] =
          externalIpEgressBandwidthTierValue.value;
    }
    final totalEgressBandwidthTierValue = totalEgressBandwidthTier;
    if (totalEgressBandwidthTierValue != null) {
      map['totalEgressBandwidthTier'] = totalEgressBandwidthTierValue.value;
    }
    return map;
  }

  factory NetworkPerformanceConfig5.fromMap(Map<String, dynamic> map) {
    return NetworkPerformanceConfig5(
      externalIpEgressBandwidthTier: map['externalIpEgressBandwidthTier'] ==
              null
          ? null
          : NetworkPerformanceConfigExternalIpEgressBandwidthTier2.fromValue(
              map['externalIpEgressBandwidthTier'] as String),
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] == null
          ? null
          : NetworkPerformanceConfigTotalEgressBandwidthTier5.fromValue(
              map['totalEgressBandwidthTier'] as String),
    );
  }
}
