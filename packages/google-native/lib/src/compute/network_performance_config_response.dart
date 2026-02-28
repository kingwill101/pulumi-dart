// ignore_for_file: unused_element, unnecessary_cast

class NetworkPerformanceConfigResponse {
  final String externalIpEgressBandwidthTier;
  final String totalEgressBandwidthTier;

  /// Creates a new [NetworkPerformanceConfigResponse].
  /// [externalIpEgressBandwidthTier] Required.
  /// [totalEgressBandwidthTier] Required.
  NetworkPerformanceConfigResponse({
    required this.externalIpEgressBandwidthTier,
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['externalIpEgressBandwidthTier'] = externalIpEgressBandwidthTier;
    map['totalEgressBandwidthTier'] = totalEgressBandwidthTier;
    return map;
  }

  factory NetworkPerformanceConfigResponse.fromMap(Map<String, dynamic> map) {
    return NetworkPerformanceConfigResponse(
      externalIpEgressBandwidthTier:
          map['externalIpEgressBandwidthTier'] as String,
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}
