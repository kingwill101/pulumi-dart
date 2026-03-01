// ignore_for_file: unused_element, unnecessary_cast


class GetDatacentersDatacenter {
  /// List of currently available Server Types in the Datacenter.
  final List<int> availableServerTypeIds;
  /// Description of the Datacenter.
  final String description;
  /// ID of the Datacenter.
  final int id;
  /// Location of the Datacenter. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  final Map<String, String> location;
  /// Name of the Datacenter.
  final String name;
  /// List of supported Server Types in the Datacenter.
  final List<int> supportedServerTypeIds;

  /// Creates a new [GetDatacentersDatacenter].
  /// [availableServerTypeIds] List of currently available Server Types in the Datacenter.
  /// [description] Description of the Datacenter.
  /// [id] ID of the Datacenter.
  /// [location] Location of the Datacenter. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  /// [name] Name of the Datacenter.
  /// [supportedServerTypeIds] List of supported Server Types in the Datacenter.
  GetDatacentersDatacenter({
    required this.availableServerTypeIds,
    required this.description,
    required this.id,
    required this.location,
    required this.name,
    required this.supportedServerTypeIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableServerTypeIds': availableServerTypeIds,
      'description': description,
      'id': id,
      'location': location,
      'name': name,
      'supportedServerTypeIds': supportedServerTypeIds,
    };
  }

  factory GetDatacentersDatacenter.fromMap(Map<String, dynamic> map) {
    return GetDatacentersDatacenter(
      availableServerTypeIds: (map['availableServerTypeIds'] as List).cast<int>(),
      description: map['description'] as String,
      id: map['id'] as int,
      location: (map['location'] as Map).cast<String, String>(),
      name: map['name'] as String,
      supportedServerTypeIds: (map['supportedServerTypeIds'] as List).cast<int>(),
    );
  }
}

