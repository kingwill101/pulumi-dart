// ignore_for_file: unused_element, unnecessary_cast

class NetworkPerformanceConfigResponse2 {
  final String totalEgressBandwidthTier;

  NetworkPerformanceConfigResponse2({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['totalEgressBandwidthTier'] = totalEgressBandwidthTier;
    return map;
  }

  factory NetworkPerformanceConfigResponse2.fromMap(Map<String, dynamic> map) {
    return NetworkPerformanceConfigResponse2(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}
