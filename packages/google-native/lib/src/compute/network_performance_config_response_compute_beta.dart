// ignore_for_file: unused_element, unnecessary_cast

class NetworkPerformanceConfigResponseComputeBeta {
  final String totalEgressBandwidthTier;

  /// Creates a new [NetworkPerformanceConfigResponseComputeBeta].
  /// [totalEgressBandwidthTier] Required.
  NetworkPerformanceConfigResponseComputeBeta({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['totalEgressBandwidthTier'] = totalEgressBandwidthTier;
    return map;
  }

  factory NetworkPerformanceConfigResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return NetworkPerformanceConfigResponseComputeBeta(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}
