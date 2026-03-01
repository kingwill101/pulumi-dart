// ignore_for_file: unused_element, unnecessary_cast


class RegistryGeoreplication {
  /// A location where the container registry should be geo-replicated.
  final String location;
  /// Whether regional endpoint is enabled for this Container Registry?
  final bool? regionalEndpointEnabled;
  /// A mapping of tags to assign to this replication location.
  final Map<String, String>? tags;
  /// Whether zone redundancy is enabled for this replication location? Defaults to `false`.
  ///
  /// > **Note:** Changing the `zone_redundancy_enabled` forces an underlying replication to be created.
  final bool? zoneRedundancyEnabled;

  /// Creates a new [RegistryGeoreplication].
  /// [location] A location where the container registry should be geo-replicated.
  /// [regionalEndpointEnabled] Whether regional endpoint is enabled for this Container Registry?
  /// [tags] A mapping of tags to assign to this replication location.
  /// [zoneRedundancyEnabled] Whether zone redundancy is enabled for this replication location? Defaults to `false`.
  RegistryGeoreplication({
    required this.location,
    this.regionalEndpointEnabled,
    this.tags,
    this.zoneRedundancyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'regionalEndpointEnabled': ?regionalEndpointEnabled,
      'tags': ?tags,
      'zoneRedundancyEnabled': ?zoneRedundancyEnabled,
    };
  }

  factory RegistryGeoreplication.fromMap(Map<String, dynamic> map) {
    return RegistryGeoreplication(
      location: map['location'] as String,
      regionalEndpointEnabled: map['regionalEndpointEnabled'] == null ? null : map['regionalEndpointEnabled'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      zoneRedundancyEnabled: map['zoneRedundancyEnabled'] == null ? null : map['zoneRedundancyEnabled'] as bool,
    );
  }
}

