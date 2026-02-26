// ignore_for_file: unused_element, unnecessary_cast

import '../backend_service_strong_session_affinity_cookie_ttl/backend_service_strong_session_affinity_cookie_ttl.dart';

class BackendServiceStrongSessionAffinityCookie {
  /// Name of the cookie.
  final String? name;

  /// Path to set for the cookie.
  final String? path;

  /// Lifetime of the cookie.
  /// Structure is documented below.
  final BackendServiceStrongSessionAffinityCookieTtl? ttl;

  BackendServiceStrongSessionAffinityCookie({
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

  factory BackendServiceStrongSessionAffinityCookie.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceStrongSessionAffinityCookie(
      name: map['name'] == null ? null : map['name'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      ttl: map['ttl'] == null
          ? null
          : BackendServiceStrongSessionAffinityCookieTtl.fromMap(
              (map['ttl'] as Map).cast<String, dynamic>()),
    );
  }
}
