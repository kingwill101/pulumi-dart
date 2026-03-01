// ignore_for_file: unused_element, unnecessary_cast


class ConfigurationStoreReplica {
  /// The URL of the App Configuration Replica.
  final String? endpoint;
  /// The ID of the Access Key.
  final String? id;
  /// Specifies the supported Azure location where the replica exists.
  final String location;
  /// Specifies the name of the replica.
  final String name;

  /// Creates a new [ConfigurationStoreReplica].
  /// [endpoint] The URL of the App Configuration Replica.
  /// [id] The ID of the Access Key.
  /// [location] Specifies the supported Azure location where the replica exists.
  /// [name] Specifies the name of the replica.
  ConfigurationStoreReplica({
    this.endpoint,
    this.id,
    required this.location,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'id': ?id,
      'location': location,
      'name': name,
    };
  }

  factory ConfigurationStoreReplica.fromMap(Map<String, dynamic> map) {
    return ConfigurationStoreReplica(
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
    );
  }
}

