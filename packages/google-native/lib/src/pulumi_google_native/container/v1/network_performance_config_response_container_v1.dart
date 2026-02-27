// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of all network bandwidth tiers
class NetworkPerformanceConfigResponseContainerV1 {
  /// Specifies the total network bandwidth tier for the NodePool.
  final String totalEgressBandwidthTier;

  NetworkPerformanceConfigResponseContainerV1({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['totalEgressBandwidthTier'] = totalEgressBandwidthTier;
    return map;
  }

  factory NetworkPerformanceConfigResponseContainerV1.fromMap(
      Map<String, dynamic> map) {
    return NetworkPerformanceConfigResponseContainerV1(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}
