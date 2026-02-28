// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response_compute_beta.dart';

/// The information about the HTTP Cookie on which the hash function is based for load balancing policies that use a consistent hash.
class ConsistentHashLoadBalancerSettingsHttpCookieResponseComputeBeta {
  /// Name of the cookie.
  final String name;

  /// Path to set for the cookie.
  final String path;

  /// Lifetime of the cookie.
  final DurationResponseComputeBeta ttl;

  /// Creates a new [ConsistentHashLoadBalancerSettingsHttpCookieResponseComputeBeta].
  /// [name] Name of the cookie.
  /// [path] Path to set for the cookie.
  /// [ttl] Lifetime of the cookie.
  ConsistentHashLoadBalancerSettingsHttpCookieResponseComputeBeta({
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

  factory ConsistentHashLoadBalancerSettingsHttpCookieResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return ConsistentHashLoadBalancerSettingsHttpCookieResponseComputeBeta(
      name: map['name'] as String,
      path: map['path'] as String,
      ttl: DurationResponseComputeBeta.fromMap(
          (map['ttl'] as Map).cast<String, dynamic>()),
    );
  }
}
