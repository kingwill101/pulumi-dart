// ignore_for_file: unused_element, unnecessary_cast

import 'managed_zone_service_directory_config_namespace.dart';

/// Contains information about Service Directory-backed zones.
class ManagedZoneServiceDirectoryConfig {
  final String? kind;

  /// Contains information about the namespace associated with the zone.
  final ManagedZoneServiceDirectoryConfigNamespace? namespace;

  ManagedZoneServiceDirectoryConfig({
    this.kind,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue.toMap();
    }
    return map;
  }

  factory ManagedZoneServiceDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZoneServiceDirectoryConfig(
      kind: map['kind'] == null ? null : map['kind'] as String,
      namespace: map['namespace'] == null
          ? null
          : ManagedZoneServiceDirectoryConfigNamespace.fromMap(
              (map['namespace'] as Map).cast<String, dynamic>()),
    );
  }
}
