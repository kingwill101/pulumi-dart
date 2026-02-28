// ignore_for_file: unused_element, unnecessary_cast

import 'network_performance_config_total_egress_bandwidth_tier_compute_beta.dart';

class NetworkPerformanceConfigComputeBeta {
  final NetworkPerformanceConfigTotalEgressBandwidthTierComputeBeta?
      totalEgressBandwidthTier;

  /// Creates a new [NetworkPerformanceConfigComputeBeta].
  /// [totalEgressBandwidthTier] Optional.
  NetworkPerformanceConfigComputeBeta({
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

  factory NetworkPerformanceConfigComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return NetworkPerformanceConfigComputeBeta(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] == null
          ? null
          : NetworkPerformanceConfigTotalEgressBandwidthTierComputeBeta
              .fromValue(map['totalEgressBandwidthTier'] as String),
    );
  }
}
