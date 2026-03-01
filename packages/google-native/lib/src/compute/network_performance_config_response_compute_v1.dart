// ignore_for_file: unused_element, unnecessary_cast

class NetworkPerformanceConfigResponseComputeV1 {
  final String totalEgressBandwidthTier;

  /// Creates a new [NetworkPerformanceConfigResponseComputeV1].
  /// [totalEgressBandwidthTier] Required.
  NetworkPerformanceConfigResponseComputeV1({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': totalEgressBandwidthTier,
    };
  }

  factory NetworkPerformanceConfigResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkPerformanceConfigResponseComputeV1(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}
