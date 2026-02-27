// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_backend_service_strong_session_affinity_cooky_ttl/get_backend_service_strong_session_affinity_cooky_ttl.dart';

class GetBackendServiceStrongSessionAffinityCooky {
  /// The name of the Backend Service.
  ///
  /// - - -
  final String name;

  /// Path to set for the cookie.
  final String path;

  /// Lifetime of the cookie.
  final List<GetBackendServiceStrongSessionAffinityCookyTtl> ttls;

  GetBackendServiceStrongSessionAffinityCooky({
    required this.name,
    required this.path,
    required this.ttls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['path'] = path;
    map['ttls'] = pulumi.Input.encodeList<
        GetBackendServiceStrongSessionAffinityCookyTtl,
        Map<String, dynamic>>(ttls, (value) => value.toMap());
    return map;
  }

  factory GetBackendServiceStrongSessionAffinityCooky.fromMap(
      Map<String, dynamic> map) {
    return GetBackendServiceStrongSessionAffinityCooky(
      name: map['name'] as String,
      path: map['path'] as String,
      ttls: pulumi.Input.decodeList<
              GetBackendServiceStrongSessionAffinityCookyTtl>(
          map['ttls'],
          (value) => GetBackendServiceStrongSessionAffinityCookyTtl.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
