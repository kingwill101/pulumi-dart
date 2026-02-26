// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_region_backend_service_consistent_hash_http_cooky_ttl/get_region_backend_service_consistent_hash_http_cooky_ttl.dart';

class GetRegionBackendServiceConsistentHashHttpCooky {
  /// The name of the regional backend service.
  final String name;

  /// Path to set for the cookie.
  final String path;

  /// Lifetime of the cookie.
  final List<GetRegionBackendServiceConsistentHashHttpCookyTtl> ttls;

  GetRegionBackendServiceConsistentHashHttpCooky({
    required this.name,
    required this.path,
    required this.ttls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['path'] = path;
    map['ttls'] = Input.encodeList<
        GetRegionBackendServiceConsistentHashHttpCookyTtl,
        Map<String, dynamic>>(ttls, (value) => value.toMap());
    return map;
  }

  factory GetRegionBackendServiceConsistentHashHttpCooky.fromMap(
      Map<String, dynamic> map) {
    return GetRegionBackendServiceConsistentHashHttpCooky(
      name: map['name'] as String,
      path: map['path'] as String,
      ttls: Input.decodeList<GetRegionBackendServiceConsistentHashHttpCookyTtl>(
          map['ttls'],
          (value) => GetRegionBackendServiceConsistentHashHttpCookyTtl.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
