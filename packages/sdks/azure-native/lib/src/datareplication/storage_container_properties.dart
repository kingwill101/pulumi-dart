// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage container properties.
class StorageContainerProperties {
  /// Gets or sets the ClusterSharedVolumePath.
  final pulumi.Input<String> clusterSharedVolumePath;
  /// Gets or sets the Name.
  final pulumi.Input<String> name;

  /// Creates a new [StorageContainerProperties].
  /// [clusterSharedVolumePath] Gets or sets the ClusterSharedVolumePath.
  /// [name] Gets or sets the Name.
  const StorageContainerProperties({
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
      clusterSharedVolumePath: pulumi.Input.fromValue(map['clusterSharedVolumePath'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
