// ignore_for_file: unused_element, unnecessary_cast

import 'duration.dart';

/// The information about the HTTP Cookie on which the hash function is based for load balancing policies that use a consistent hash.
class ConsistentHashLoadBalancerSettingsHttpCookie {
  /// Name of the cookie.
  final String? name;

  /// Path to set for the cookie.
  final String? path;

  /// Lifetime of the cookie.
  final Duration? ttl;

  /// Creates a new [ConsistentHashLoadBalancerSettingsHttpCookie].
  /// [name] Name of the cookie.
  /// [path] Path to set for the cookie.
  /// [ttl] Lifetime of the cookie.
  ConsistentHashLoadBalancerSettingsHttpCookie({
    this.name,
    this.path,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final ttlValue = ttl;
    if (ttlValue != null) {
      map['ttl'] = ttlValue.toMap();
    }
    return map;
  }

  factory ConsistentHashLoadBalancerSettingsHttpCookie.fromMap(
      Map<String, dynamic> map) {
    return ConsistentHashLoadBalancerSettingsHttpCookie(
      name: map['name'] == null ? null : map['name'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      ttl: map['ttl'] == null
          ? null
          : Duration.fromMap((map['ttl'] as Map).cast<String, dynamic>()),
    );
  }
}
