// ignore_for_file: unused_element, unnecessary_cast

import 'network_performance_config_external_ip_egress_bandwidth_tier.dart';
import 'network_performance_config_total_egress_bandwidth_tier_container_v1beta1.dart';

/// Configuration of all network bandwidth tiers
class NetworkPerformanceConfigContainerV1beta1 {
  /// Specifies the network bandwidth tier for the NodePool for traffic to external/public IP addresses.
  final NetworkPerformanceConfigExternalIpEgressBandwidthTier?
      externalIpEgressBandwidthTier;

  /// Specifies the total network bandwidth tier for the NodePool.
  final NetworkPerformanceConfigTotalEgressBandwidthTierContainerV1beta1?
      totalEgressBandwidthTier;

  /// Creates a new [NetworkPerformanceConfigContainerV1beta1].
  /// [externalIpEgressBandwidthTier] Specifies the network bandwidth tier for the NodePool for traffic to external/public IP addresses.
  /// [totalEgressBandwidthTier] Specifies the total network bandwidth tier for the NodePool.
  NetworkPerformanceConfigContainerV1beta1({
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

  factory NetworkPerformanceConfigContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return NetworkPerformanceConfigContainerV1beta1(
      externalIpEgressBandwidthTier:
          map['externalIpEgressBandwidthTier'] == null
              ? null
              : NetworkPerformanceConfigExternalIpEgressBandwidthTier.fromValue(
                  map['externalIpEgressBandwidthTier'] as String),
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] == null
          ? null
          : NetworkPerformanceConfigTotalEgressBandwidthTierContainerV1beta1
              .fromValue(map['totalEgressBandwidthTier'] as String),
    );
  }
}
