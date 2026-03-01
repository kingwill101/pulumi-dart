// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVirtualCluster.
class GetVirtualClusterResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// List of resources in this virtual cluster.
  final List<String> childResources;
  /// Resource ID.
  final String id;
  /// Resource location.
  final String location;
  /// Resource name.
  final String name;
  /// Subnet resource ID for the virtual cluster.
  final String subnetId;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;
  /// Virtual cluster version.
  final String? version;

  /// Creates a new [GetVirtualClusterResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [childResources] List of resources in this virtual cluster.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [subnetId] Subnet resource ID for the virtual cluster.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [version] Virtual cluster version.
  GetVirtualClusterResult({
    required this.azureApiVersion,
    required this.childResources,
    required this.id,
    required this.location,
    required this.name,
    required this.subnetId,
    this.tags,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'childResources': childResources,
      'id': id,
      'location': location,
      'name': name,
      'subnetId': subnetId,
      'tags': ?tags,
      'type': type,
      'version': ?version,
    };
  }

  factory GetVirtualClusterResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualClusterResult(
      azureApiVersion: map['azureApiVersion'] as String,
      childResources: (map['childResources'] as List).cast<String>(),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      subnetId: map['subnetId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

