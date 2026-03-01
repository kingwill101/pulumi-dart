// ignore_for_file: unused_element, unnecessary_cast


/// Storage container properties.
class StorageContainerPropertiesResponse {
  /// Gets or sets the ClusterSharedVolumePath.
  final String clusterSharedVolumePath;
  /// Gets or sets the Name.
  final String name;

  /// Creates a new [StorageContainerPropertiesResponse].
  /// [clusterSharedVolumePath] Gets or sets the ClusterSharedVolumePath.
  /// [name] Gets or sets the Name.
  StorageContainerPropertiesResponse({
    required this.clusterSharedVolumePath,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSharedVolumePath': clusterSharedVolumePath,
      'name': name,
    };
  }

  factory StorageContainerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StorageContainerPropertiesResponse(
      clusterSharedVolumePath: map['clusterSharedVolumePath'] as String,
      name: map['name'] as String,
    );
  }
}

