// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerlessCacheCacheUsageLimitsEcpuPerSecond {
  /// The maximum number of ECPUs the cache can consume per second. Must be between 1,000 and 15,000,000.
  final pulumi.Input<int>? maximum;
  /// The minimum number of ECPUs the cache can consume per second. Must be between 1,000 and 15,000,000.
  final pulumi.Input<int>? minimum;

  /// Creates a new [ServerlessCacheCacheUsageLimitsEcpuPerSecond].
  /// [maximum] The maximum number of ECPUs the cache can consume per second. Must be between 1,000 and 15,000,000.
  /// [minimum] The minimum number of ECPUs the cache can consume per second. Must be between 1,000 and 15,000,000.
  ServerlessCacheCacheUsageLimitsEcpuPerSecond({
    this.maximum,
    this.minimum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximum': ?maximum,
      'minimum': ?minimum,
    };
  }

  factory ServerlessCacheCacheUsageLimitsEcpuPerSecond.fromMap(Map<String, dynamic> map) {
    return ServerlessCacheCacheUsageLimitsEcpuPerSecond(
      maximum: map['maximum'] == null ? null : (map['maximum'] as int).input(),
      minimum: map['minimum'] == null ? null : (map['minimum'] as int).input(),
    );
  }
}

