// ignore_for_file: unused_element, unnecessary_cast


class GetConfigurationStoreReplica {
  /// The URL of the App Configuration Replica.
  final String endpoint;
  /// The ID of the Access Key.
  final String id;
  /// The supported Azure location where the App Configuration Replica exists.
  final String location;
  /// The Name of this App Configuration.
  final String name;

  /// Creates a new [GetConfigurationStoreReplica].
  /// [endpoint] The URL of the App Configuration Replica.
  /// [id] The ID of the Access Key.
  /// [location] The supported Azure location where the App Configuration Replica exists.
  /// [name] The Name of this App Configuration.
  GetConfigurationStoreReplica({
    required this.endpoint,
    required this.id,
    required this.location,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'id': id,
      'location': location,
      'name': name,
    };
  }

  factory GetConfigurationStoreReplica.fromMap(Map<String, dynamic> map) {
    return GetConfigurationStoreReplica(
      endpoint: map['endpoint'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
    );
  }
}

