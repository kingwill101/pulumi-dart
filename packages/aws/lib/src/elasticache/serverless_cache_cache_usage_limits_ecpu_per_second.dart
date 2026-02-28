// ignore_for_file: unused_element, unnecessary_cast

class ServerlessCacheCacheUsageLimitsEcpuPerSecond {
  /// The maximum number of ECPUs the cache can consume per second. Must be between 1,000 and 15,000,000.
  final int? maximum;

  /// The minimum number of ECPUs the cache can consume per second. Must be between 1,000 and 15,000,000.
  final int? minimum;

  /// Creates a new [ServerlessCacheCacheUsageLimitsEcpuPerSecond].
  /// [maximum] The maximum number of ECPUs the cache can consume per second. Must be between 1,000 and 15,000,000.
  /// [minimum] The minimum number of ECPUs the cache can consume per second. Must be between 1,000 and 15,000,000.
  ServerlessCacheCacheUsageLimitsEcpuPerSecond({
    this.maximum,
    this.minimum,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maximumValue = maximum;
    if (maximumValue != null) {
      map['maximum'] = maximumValue;
    }
    final minimumValue = minimum;
    if (minimumValue != null) {
      map['minimum'] = minimumValue;
    }
    return map;
  }

  factory ServerlessCacheCacheUsageLimitsEcpuPerSecond.fromMap(
      Map<String, dynamic> map) {
    return ServerlessCacheCacheUsageLimitsEcpuPerSecond(
      maximum: map['maximum'] == null ? null : map['maximum'] as int,
      minimum: map['minimum'] == null ? null : map['minimum'] as int,
    );
  }
}
