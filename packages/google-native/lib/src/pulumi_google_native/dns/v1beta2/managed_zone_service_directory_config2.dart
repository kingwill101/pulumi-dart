// ignore_for_file: unused_element, unnecessary_cast

import 'managed_zone_service_directory_config_namespace2.dart';

/// Contains information about Service Directory-backed zones.
class ManagedZoneServiceDirectoryConfig2 {
  final String? kind;

  /// Contains information about the namespace associated with the zone.
  final ManagedZoneServiceDirectoryConfigNamespace2? namespace;

  ManagedZoneServiceDirectoryConfig2({
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

  factory ManagedZoneServiceDirectoryConfig2.fromMap(Map<String, dynamic> map) {
    return ManagedZoneServiceDirectoryConfig2(
      kind: map['kind'] == null ? null : map['kind'] as String,
      namespace: map['namespace'] == null
          ? null
          : ManagedZoneServiceDirectoryConfigNamespace2.fromMap(
              (map['namespace'] as Map).cast<String, dynamic>()),
    );
  }
}
