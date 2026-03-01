// ignore_for_file: unused_element, unnecessary_cast


/// Storage container properties.
class StorageContainerProperties {
  /// Gets or sets the ClusterSharedVolumePath.
  final String clusterSharedVolumePath;
  /// Gets or sets the Name.
  final String name;

  /// Creates a new [StorageContainerProperties].
  /// [clusterSharedVolumePath] Gets or sets the ClusterSharedVolumePath.
  /// [name] Gets or sets the Name.
  StorageContainerProperties({
    required this.clusterSharedVolumePath,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSharedVolumePath': clusterSharedVolumePath,
      'name': name,
    };
  }

  factory StorageContainerProperties.fromMap(Map<String, dynamic> map) {
    return StorageContainerProperties(
      clusterSharedVolumePath: map['clusterSharedVolumePath'] as String,
      name: map['name'] as String,
    );
  }
}

