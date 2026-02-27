// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_backend_service_consistent_hash_http_cooky_ttl/get_backend_service_consistent_hash_http_cooky_ttl.dart';

class GetBackendServiceConsistentHashHttpCooky {
  /// The name of the Backend Service.
  ///
  /// - - -
  final String name;

  /// Path to set for the cookie.
  final String path;

  /// Lifetime of the cookie.
  final List<GetBackendServiceConsistentHashHttpCookyTtl> ttls;

  GetBackendServiceConsistentHashHttpCooky({
    required this.name,
    required this.path,
    required this.ttls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['path'] = path;
    map['ttls'] = pulumi.Input.encodeList<
        GetBackendServiceConsistentHashHttpCookyTtl,
        Map<String, dynamic>>(ttls, (value) => value.toMap());
    return map;
  }

  factory GetBackendServiceConsistentHashHttpCooky.fromMap(
      Map<String, dynamic> map) {
    return GetBackendServiceConsistentHashHttpCooky(
      name: map['name'] as String,
      path: map['path'] as String,
      ttls:
          pulumi.Input.decodeList<GetBackendServiceConsistentHashHttpCookyTtl>(
              map['ttls'],
              (value) => GetBackendServiceConsistentHashHttpCookyTtl.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
