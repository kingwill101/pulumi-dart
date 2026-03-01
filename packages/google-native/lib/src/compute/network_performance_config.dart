// ignore_for_file: unused_element, unnecessary_cast

import 'network_performance_config_external_ip_egress_bandwidth_tier.dart';
import 'network_performance_config_total_egress_bandwidth_tier.dart';

class NetworkPerformanceConfig {
  final NetworkPerformanceConfigExternalIpEgressBandwidthTier?
  externalIpEgressBandwidthTier;
  final NetworkPerformanceConfigTotalEgressBandwidthTier?
  totalEgressBandwidthTier;

  /// Creates a new [NetworkPerformanceConfig].
  /// [externalIpEgressBandwidthTier] Optional.
  /// [totalEgressBandwidthTier] Optional.
  NetworkPerformanceConfig({
    this.externalIpEgressBandwidthTier,
    this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIpEgressBandwidthTier': ?externalIpEgressBandwidthTier == null
          ? null
          : externalIpEgressBandwidthTier!.value,
      'totalEgressBandwidthTier': ?totalEgressBandwidthTier == null
          ? null
          : totalEgressBandwidthTier!.value,
    };
  }

  factory NetworkPerformanceConfig.fromMap(Map<String, dynamic> map) {
    return NetworkPerformanceConfig(
      externalIpEgressBandwidthTier:
          map['externalIpEgressBandwidthTier'] == null
          ? null
          : NetworkPerformanceConfigExternalIpEgressBandwidthTier.fromValue(
              map['externalIpEgressBandwidthTier'] as String,
            ),
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] == null
          ? null
          : NetworkPerformanceConfigTotalEgressBandwidthTier.fromValue(
              map['totalEgressBandwidthTier'] as String,
            ),
    );
  }
}
