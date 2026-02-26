// ignore_for_file: unused_element, unnecessary_cast

import 'managed_zone_service_directory_config_namespace_response2.dart';

/// Contains information about Service Directory-backed zones.
class ManagedZoneServiceDirectoryConfigResponse2 {
  final String kind;

  /// Contains information about the namespace associated with the zone.
  final ManagedZoneServiceDirectoryConfigNamespaceResponse2 namespace;

  ManagedZoneServiceDirectoryConfigResponse2({
    required this.kind,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['namespace'] = namespace.toMap();
    return map;
  }

  factory ManagedZoneServiceDirectoryConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return ManagedZoneServiceDirectoryConfigResponse2(
      kind: map['kind'] as String,
      namespace: ManagedZoneServiceDirectoryConfigNamespaceResponse2.fromMap(
          (map['namespace'] as Map).cast<String, dynamic>()),
    );
  }
}
