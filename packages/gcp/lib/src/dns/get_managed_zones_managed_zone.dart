// ignore_for_file: unused_element, unnecessary_cast

class GetManagedZonesManagedZone {
  final String description;
  final String dnsName;
  final String id;
  final String managedZoneId;
  final String? name;
  final List<String> nameServers;

  /// The ID of the project containing Google Cloud DNS zones. If this is not provided the default project will be used.
  final String? project;
  final String visibility;

  /// Creates a new [GetManagedZonesManagedZone].
  /// [description] Required.
  /// [dnsName] Required.
  /// [id] Required.
  /// [managedZoneId] Required.
  /// [name] Optional.
  /// [nameServers] Required.
  /// [project] The ID of the project containing Google Cloud DNS zones. If this is not provided the default project will be used.
  /// [visibility] Required.
  GetManagedZonesManagedZone({
    required this.description,
    required this.dnsName,
    required this.id,
    required this.managedZoneId,
    this.name,
    required this.nameServers,
    this.project,
    required this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'dnsName': dnsName,
      'id': id,
      'managedZoneId': managedZoneId,
      'name': ?name,
      'nameServers': nameServers,
      'project': ?project,
      'visibility': visibility,
    };
  }

  factory GetManagedZonesManagedZone.fromMap(Map<String, dynamic> map) {
    return GetManagedZonesManagedZone(
      description: map['description'] as String,
      dnsName: map['dnsName'] as String,
      id: map['id'] as String,
      managedZoneId: map['managedZoneId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nameServers: (map['nameServers'] as List).cast<String>(),
      project: map['project'] == null ? null : map['project'] as String,
      visibility: map['visibility'] as String,
    );
  }
}
