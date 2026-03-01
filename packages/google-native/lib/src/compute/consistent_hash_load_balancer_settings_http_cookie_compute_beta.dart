// ignore_for_file: unused_element, unnecessary_cast

import 'duration_compute_beta.dart';

/// The information about the HTTP Cookie on which the hash function is based for load balancing policies that use a consistent hash.
class ConsistentHashLoadBalancerSettingsHttpCookieComputeBeta {
  /// Name of the cookie.
  final String? name;

  /// Path to set for the cookie.
  final String? path;

  /// Lifetime of the cookie.
  final DurationComputeBeta? ttl;

  /// Creates a new [ConsistentHashLoadBalancerSettingsHttpCookieComputeBeta].
  /// [name] Name of the cookie.
  /// [path] Path to set for the cookie.
  /// [ttl] Lifetime of the cookie.
  ConsistentHashLoadBalancerSettingsHttpCookieComputeBeta({
    this.name,
    this.path,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'path': ?path,
      'ttl': ?ttl == null ? null : ttl!.toMap(),
    };
  }

  factory ConsistentHashLoadBalancerSettingsHttpCookieComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConsistentHashLoadBalancerSettingsHttpCookieComputeBeta(
      name: map['name'] == null ? null : map['name'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      ttl: map['ttl'] == null
          ? null
          : DurationComputeBeta.fromMap(
              (map['ttl'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
