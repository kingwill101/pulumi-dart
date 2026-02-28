// ignore_for_file: unused_element, unnecessary_cast

/// Specifies a bandwidth limit for an agent pool.
class BandwidthLimitResponse {
  /// Bandwidth rate in megabytes per second, distributed across all the agents in the pool.
  final String limitMbps;

  /// Creates a new [BandwidthLimitResponse].
  /// [limitMbps] Bandwidth rate in megabytes per second, distributed across all the agents in the pool.
  BandwidthLimitResponse({
    required this.limitMbps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['limitMbps'] = limitMbps;
    return map;
  }

  factory BandwidthLimitResponse.fromMap(Map<String, dynamic> map) {
    return BandwidthLimitResponse(
      limitMbps: map['limitMbps'] as String,
    );
  }
}
