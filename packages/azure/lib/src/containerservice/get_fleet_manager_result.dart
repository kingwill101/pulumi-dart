// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFleetManager.
class GetFleetManagerResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the Kubernetes Fleet Manager exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// A mapping of tags assigned to the Kubernetes Fleet Manager.
  final Map<String, String> tags;

  /// Creates a new [GetFleetManagerResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Kubernetes Fleet Manager exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the Kubernetes Fleet Manager.
  GetFleetManagerResult({
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetFleetManagerResult.fromMap(Map<String, dynamic> map) {
    return GetFleetManagerResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

