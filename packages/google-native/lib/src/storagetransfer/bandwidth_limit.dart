// ignore_for_file: unused_element, unnecessary_cast

/// Specifies a bandwidth limit for an agent pool.
class BandwidthLimit {
  /// Bandwidth rate in megabytes per second, distributed across all the agents in the pool.
  final String? limitMbps;

  /// Creates a new [BandwidthLimit].
  /// [limitMbps] Bandwidth rate in megabytes per second, distributed across all the agents in the pool.
  BandwidthLimit({
    this.limitMbps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final limitMbpsValue = limitMbps;
    if (limitMbpsValue != null) {
      map['limitMbps'] = limitMbpsValue;
    }
    return map;
  }

  factory BandwidthLimit.fromMap(Map<String, dynamic> map) {
    return BandwidthLimit(
      limitMbps: map['limitMbps'] == null ? null : map['limitMbps'] as String,
    );
  }
}
