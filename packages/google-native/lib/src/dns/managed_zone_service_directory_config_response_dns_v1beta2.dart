// ignore_for_file: unused_element, unnecessary_cast

import 'managed_zone_service_directory_config_namespace_response_dns_v1beta2.dart';

/// Contains information about Service Directory-backed zones.
class ManagedZoneServiceDirectoryConfigResponseDnsV1beta2 {
  final String kind;

  /// Contains information about the namespace associated with the zone.
  final ManagedZoneServiceDirectoryConfigNamespaceResponseDnsV1beta2 namespace;

  /// Creates a new [ManagedZoneServiceDirectoryConfigResponseDnsV1beta2].
  /// [kind] Required.
  /// [namespace] Contains information about the namespace associated with the zone.
  ManagedZoneServiceDirectoryConfigResponseDnsV1beta2({
    required this.kind,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kind': kind, 'namespace': namespace.toMap()};
  }

  factory ManagedZoneServiceDirectoryConfigResponseDnsV1beta2.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedZoneServiceDirectoryConfigResponseDnsV1beta2(
      kind: map['kind'] as String,
      namespace:
          ManagedZoneServiceDirectoryConfigNamespaceResponseDnsV1beta2.fromMap(
            (map['namespace'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
