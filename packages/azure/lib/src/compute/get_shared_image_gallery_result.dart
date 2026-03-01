// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSharedImageGallery.
class GetSharedImageGalleryResult {
  /// A description for the Shared Image Gallery.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Shared Image names within this Shared Image Gallery.
  final List<String> imageNames;
  final String location;
  final String name;
  final String resourceGroupName;
  /// A mapping of tags which are assigned to the Shared Image Gallery.
  final Map<String, String> tags;
  /// The unique name assigned to the Shared Image Gallery.
  final String uniqueName;

  /// Creates a new [GetSharedImageGalleryResult].
  /// [description] A description for the Shared Image Gallery.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageNames] A list of Shared Image names within this Shared Image Gallery.
  /// [location] Required.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags which are assigned to the Shared Image Gallery.
  /// [uniqueName] The unique name assigned to the Shared Image Gallery.
  GetSharedImageGalleryResult({
    required this.description,
    required this.id,
    required this.imageNames,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
    required this.uniqueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'imageNames': imageNames,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
      'uniqueName': uniqueName,
    };
  }

  factory GetSharedImageGalleryResult.fromMap(Map<String, dynamic> map) {
    return GetSharedImageGalleryResult(
      description: map['description'] as String,
      id: map['id'] as String,
      imageNames: (map['imageNames'] as List).cast<String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      uniqueName: map['uniqueName'] as String,
    );
  }
}

