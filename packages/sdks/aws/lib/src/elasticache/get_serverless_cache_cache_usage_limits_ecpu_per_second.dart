// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServerlessCacheCacheUsageLimitsEcpuPerSecond {
  /// The maximum number of ECPUs the cache can consume per second.
  final pulumi.Input<int> maximum;

  /// The minimum number of ECPUs the cache can consume per second.
  final pulumi.Input<int> minimum;

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
      maximum: pulumi.Input.fromValue(map['maximum'] as int),
      minimum: pulumi.Input.fromValue(map['minimum'] as int),
    );
  }
}
