// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response_compute_v1.dart';

/// The information about the HTTP Cookie on which the hash function is based for load balancing policies that use a consistent hash.
class ConsistentHashLoadBalancerSettingsHttpCookieResponseComputeV1 {
  /// Name of the cookie.
  final String name;

  /// Path to set for the cookie.
  final String path;

  /// Lifetime of the cookie.
  final DurationResponseComputeV1 ttl;

  ConsistentHashLoadBalancerSettingsHttpCookieResponseComputeV1({
    required this.name,
    required this.path,
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['path'] = path;
    map['ttl'] = ttl.toMap();
    return map;
  }

  factory ConsistentHashLoadBalancerSettingsHttpCookieResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return ConsistentHashLoadBalancerSettingsHttpCookieResponseComputeV1(
      name: map['name'] as String,
      path: map['path'] as String,
      ttl: DurationResponseComputeV1.fromMap(
          (map['ttl'] as Map).cast<String, dynamic>()),
    );
  }
}
