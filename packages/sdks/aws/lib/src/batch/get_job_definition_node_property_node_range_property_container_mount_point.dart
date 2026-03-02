// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionNodePropertyNodeRangePropertyContainerMountPoint {
  /// The absolute file path in the container where the tmpfs volume is mounted.
  final pulumi.Input<String> containerPath;
  /// If this value is true, the container has read-only access to the volume.
  final pulumi.Input<bool> readOnly;
  /// The name of the volume to mount.
  final pulumi.Input<String> sourceVolume;

  /// Creates a new [GetJobDefinitionNodePropertyNodeRangePropertyContainerMountPoint].
  /// [containerPath] The absolute file path in the container where the tmpfs volume is mounted.
  /// [readOnly] If this value is true, the container has read-only access to the volume.
  /// [sourceVolume] The name of the volume to mount.
  GetJobDefinitionNodePropertyNodeRangePropertyContainerMountPoint({
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
      containerPath: (map['containerPath'] as String).input(),
      readOnly: (map['readOnly'] as bool).input(),
      sourceVolume: (map['sourceVolume'] as String).input(),
    );
  }
}

