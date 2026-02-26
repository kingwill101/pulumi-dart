// ignore_for_file: unused_element, unnecessary_cast

class NetworkPerformanceConfigResponse3 {
  final String totalEgressBandwidthTier;

  NetworkPerformanceConfigResponse3({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['totalEgressBandwidthTier'] = totalEgressBandwidthTier;
    return map;
  }

  factory NetworkPerformanceConfigResponse3.fromMap(Map<String, dynamic> map) {
    return NetworkPerformanceConfigResponse3(
      totalEgressBandwidthTier: map['totalEgressBandwidthTier'] as String,
    );
  }
}
