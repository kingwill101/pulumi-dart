// ignore_for_file: unused_element, unnecessary_cast

import 'managed_zone_service_directory_config_namespace_dns_v1beta2.dart';

/// Contains information about Service Directory-backed zones.
class ManagedZoneServiceDirectoryConfigDnsV1beta2 {
  final String? kind;

  /// Contains information about the namespace associated with the zone.
  final ManagedZoneServiceDirectoryConfigNamespaceDnsV1beta2? namespace;

  /// Creates a new [ManagedZoneServiceDirectoryConfigDnsV1beta2].
  /// [kind] Optional.
  /// [namespace] Contains information about the namespace associated with the zone.
  ManagedZoneServiceDirectoryConfigDnsV1beta2({
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

  factory ManagedZoneServiceDirectoryConfigDnsV1beta2.fromMap(
      Map<String, dynamic> map) {
    return ManagedZoneServiceDirectoryConfigDnsV1beta2(
      kind: map['kind'] == null ? null : map['kind'] as String,
      namespace: map['namespace'] == null
          ? null
          : ManagedZoneServiceDirectoryConfigNamespaceDnsV1beta2.fromMap(
              (map['namespace'] as Map).cast<String, dynamic>()),
    );
  }
}
