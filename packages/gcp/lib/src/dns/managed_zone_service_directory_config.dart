// ignore_for_file: unused_element, unnecessary_cast

import 'managed_zone_service_directory_config_namespace.dart';

class ManagedZoneServiceDirectoryConfig {
  /// The namespace associated with the zone.
  /// Structure is documented below.
  final ManagedZoneServiceDirectoryConfigNamespace namespace;

  /// Creates a new [ManagedZoneServiceDirectoryConfig].
  /// [namespace] The namespace associated with the zone.
  ManagedZoneServiceDirectoryConfig({required this.namespace});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'namespace': namespace.toMap()};
  }

  factory ManagedZoneServiceDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZoneServiceDirectoryConfig(
      namespace: ManagedZoneServiceDirectoryConfigNamespace.fromMap(
        (map['namespace'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
