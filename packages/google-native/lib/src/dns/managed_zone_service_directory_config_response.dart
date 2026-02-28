// ignore_for_file: unused_element, unnecessary_cast

import 'managed_zone_service_directory_config_namespace_response.dart';

/// Contains information about Service Directory-backed zones.
class ManagedZoneServiceDirectoryConfigResponse {
  final String kind;
  /// Contains information about the namespace associated with the zone.
  final ManagedZoneServiceDirectoryConfigNamespaceResponse namespace;

  /// Creates a new [ManagedZoneServiceDirectoryConfigResponse].
  /// [kind] Required.
  /// [namespace] Contains information about the namespace associated with the zone.
  ManagedZoneServiceDirectoryConfigResponse({
    required this.kind,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'namespace': namespace.toMap(),
    };
  }

  factory ManagedZoneServiceDirectoryConfigResponse.fromMap(Map<String, dynamic> map) {
    return ManagedZoneServiceDirectoryConfigResponse(
      kind: map['kind'] as String,
      namespace: ManagedZoneServiceDirectoryConfigNamespaceResponse.fromMap((map['namespace'] as Map).cast<String, dynamic>()),
    );
  }
}

