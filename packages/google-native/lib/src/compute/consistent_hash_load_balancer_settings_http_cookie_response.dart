// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response.dart';

/// The information about the HTTP Cookie on which the hash function is based for load balancing policies that use a consistent hash.
class ConsistentHashLoadBalancerSettingsHttpCookieResponse {
  /// Name of the cookie.
  final String name;

  /// Path to set for the cookie.
  final String path;

  /// Lifetime of the cookie.
  final DurationResponse ttl;

  /// Creates a new [ConsistentHashLoadBalancerSettingsHttpCookieResponse].
  /// [name] Name of the cookie.
  /// [path] Path to set for the cookie.
  /// [ttl] Lifetime of the cookie.
  ConsistentHashLoadBalancerSettingsHttpCookieResponse({
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

  factory ConsistentHashLoadBalancerSettingsHttpCookieResponse.fromMap(
      Map<String, dynamic> map) {
    return ConsistentHashLoadBalancerSettingsHttpCookieResponse(
      name: map['name'] as String,
      path: map['path'] as String,
      ttl:
          DurationResponse.fromMap((map['ttl'] as Map).cast<String, dynamic>()),
    );
  }
}
