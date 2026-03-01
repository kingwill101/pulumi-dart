// ignore_for_file: unused_element, unnecessary_cast

class GetServerlessCacheCacheUsageLimitsEcpuPerSecond {
  /// The maximum number of ECPUs the cache can consume per second.
  final int maximum;

  /// The minimum number of ECPUs the cache can consume per second.
  final int minimum;

  /// Creates a new [GetServerlessCacheCacheUsageLimitsEcpuPerSecond].
  /// [maximum] The maximum number of ECPUs the cache can consume per second.
  /// [minimum] The minimum number of ECPUs the cache can consume per second.
  GetServerlessCacheCacheUsageLimitsEcpuPerSecond({
    required this.maximum,
    required this.minimum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maximum': maximum, 'minimum': minimum};
  }

  factory GetServerlessCacheCacheUsageLimitsEcpuPerSecond.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetServerlessCacheCacheUsageLimitsEcpuPerSecond(
      maximum: map['maximum'] as int,
      minimum: map['minimum'] as int,
    );
  }
}
