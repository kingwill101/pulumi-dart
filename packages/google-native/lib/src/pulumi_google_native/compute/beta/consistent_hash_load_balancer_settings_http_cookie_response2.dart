// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response2.dart';

/// The information about the HTTP Cookie on which the hash function is based for load balancing policies that use a consistent hash.
class ConsistentHashLoadBalancerSettingsHttpCookieResponse2 {
  /// Name of the cookie.
  final String name;

  /// Path to set for the cookie.
  final String path;

  /// Lifetime of the cookie.
  final DurationResponse2 ttl;

  ConsistentHashLoadBalancerSettingsHttpCookieResponse2({
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

  factory ConsistentHashLoadBalancerSettingsHttpCookieResponse2.fromMap(
      Map<String, dynamic> map) {
    return ConsistentHashLoadBalancerSettingsHttpCookieResponse2(
      name: map['name'] as String,
      path: map['path'] as String,
      ttl: DurationResponse2.fromMap(
          (map['ttl'] as Map).cast<String, dynamic>()),
    );
  }
}
