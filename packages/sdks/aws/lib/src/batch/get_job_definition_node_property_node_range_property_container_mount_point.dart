// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionNodePropertyNodeRangePropertyContainerMountPoint {
  /// Path on the container where the host volume is mounted.
  final pulumi.Input<String> containerPath;
  /// If this value is true, the container has read-only access to the volume.
  final pulumi.Input<bool> readOnly;
  /// Name of the volume to mount.
  final pulumi.Input<String> sourceVolume;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerMountPoint].
  /// [containerPath] Path on the container where the host volume is mounted.
  /// [readOnly] If this value is true, the container has read-only access to the volume.
  /// [sourceVolume] Name of the volume to mount.
  const GetJobDefinitionNodePropertyNodeRangePropertyContainerMountPoint({
    required this.containerPath,
    required this.readOnly,
    required this.sourceVolume,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPath': containerPath,
      'readOnly': readOnly,
      'sourceVolume': sourceVolume,
    };
  }

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerMountPoint.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerMountPoint(
      containerPath: pulumi.Input.fromValue(map['containerPath'] as String),
      readOnly: pulumi.Input.fromValue(map['readOnly'] as bool),
      sourceVolume: pulumi.Input.fromValue(map['sourceVolume'] as String),
    );
  }
}
