// ignore_for_file: unused_element, unnecessary_cast

import 'network_performance_config_total_egress_bandwidth_tier.dart';

/// Configuration of all network bandwidth tiers
class NetworkPerformanceConfig {
  /// Specifies the total network bandwidth tier for the NodePool.
  final NetworkPerformanceConfigTotalEgressBandwidthTier?
  totalEgressBandwidthTier;

  /// Creates a new [NetworkPerformanceConfig].
  /// [totalEgressBandwidthTier] Specifies the total network bandwidth tier for the NodePool.
  NetworkPerformanceConfig({this.totalEgressBandwidthTier});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': ?totalEgressBandwidthTier == null
          ? null
          : totalEgressBandwidthTier!.value,
    };
  }

  factory NetworkPerformanceConfig.fromMap(Map<String, dynamic> map) {
    return NetworkPerformanceConfig(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] == null
          ? null
          : NetworkPerformanceConfigTotalEgressBandwidthTier.fromValue(
              map['totalEgressBandwidthTier'] as String,
            ),
    );
  }
}
