// ignore_for_file: unused_element, unnecessary_cast

import 'managed_zone_service_directory_config_namespace_response_dns_v1beta2.dart';

/// Contains information about Service Directory-backed zones.
class ManagedZoneServiceDirectoryConfigResponseDnsV1beta2 {
  final String kind;

  /// Contains information about the namespace associated with the zone.
  final ManagedZoneServiceDirectoryConfigNamespaceResponseDnsV1beta2 namespace;

  ManagedZoneServiceDirectoryConfigResponseDnsV1beta2({
    required this.kind,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['namespace'] = namespace.toMap();
    return map;
  }

  factory ManagedZoneServiceDirectoryConfigResponseDnsV1beta2.fromMap(
      Map<String, dynamic> map) {
    return ManagedZoneServiceDirectoryConfigResponseDnsV1beta2(
      kind: map['kind'] as String,
      namespace:
          ManagedZoneServiceDirectoryConfigNamespaceResponseDnsV1beta2.fromMap(
              (map['namespace'] as Map).cast<String, dynamic>()),
    );
  }
}
