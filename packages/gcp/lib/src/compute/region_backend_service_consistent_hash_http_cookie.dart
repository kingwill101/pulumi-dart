// ignore_for_file: unused_element, unnecessary_cast

import 'region_backend_service_consistent_hash_http_cookie_ttl.dart';

class RegionBackendServiceConsistentHashHttpCookie {
  /// Name of the cookie.
  final String? name;
  /// Path to set for the cookie.
  final String? path;
  /// Lifetime of the cookie.
  /// Structure is documented below.
  final RegionBackendServiceConsistentHashHttpCookieTtl? ttl;

  /// Creates a new [RegionBackendServiceConsistentHashHttpCookie].
  /// [name] Name of the cookie.
  /// [path] Path to set for the cookie.
  /// [ttl] Lifetime of the cookie.
  RegionBackendServiceConsistentHashHttpCookie({
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

  factory RegionBackendServiceConsistentHashHttpCookie.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceConsistentHashHttpCookie(
      name: map['name'] == null ? null : map['name'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      ttl: map['ttl'] == null ? null : RegionBackendServiceConsistentHashHttpCookieTtl.fromMap((map['ttl'] as Map).cast<String, dynamic>()),
    );
  }
}

