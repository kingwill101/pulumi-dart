// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_region_backend_service_strong_session_affinity_cooky_ttl/get_region_backend_service_strong_session_affinity_cooky_ttl.dart';

class GetRegionBackendServiceStrongSessionAffinityCooky {
  /// The name of the regional backend service.
  final String name;

  /// Path to set for the cookie.
  final String path;

  /// Lifetime of the cookie.
  final List<GetRegionBackendServiceStrongSessionAffinityCookyTtl> ttls;

  GetRegionBackendServiceStrongSessionAffinityCooky({
    required this.name,
    required this.path,
    required this.ttls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['path'] = path;
    map['ttls'] = pulumi.Input.encodeList<
        GetRegionBackendServiceStrongSessionAffinityCookyTtl,
        Map<String, dynamic>>(ttls, (value) => value.toMap());
    return map;
  }

  factory GetRegionBackendServiceStrongSessionAffinityCooky.fromMap(
      Map<String, dynamic> map) {
    return GetRegionBackendServiceStrongSessionAffinityCooky(
      name: map['name'] as String,
      path: map['path'] as String,
      ttls: pulumi.Input.decodeList<
              GetRegionBackendServiceStrongSessionAffinityCookyTtl>(
          map['ttls'],
          (value) =>
              GetRegionBackendServiceStrongSessionAffinityCookyTtl.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
