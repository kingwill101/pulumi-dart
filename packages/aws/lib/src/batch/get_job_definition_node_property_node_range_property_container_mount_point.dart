// ignore_for_file: unused_element, unnecessary_cast

class GetJobDefinitionNodePropertyNodeRangePropertyContainerMountPoint {
  /// The absolute file path in the container where the tmpfs volume is mounted.
  final String containerPath;

  /// If this value is true, the container has read-only access to the volume.
  final bool readOnly;

  /// The name of the volume to mount.
  final String sourceVolume;

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

  factory GetJobDefinitionNodePropertyNodeRangePropertyContainerMountPoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetJobDefinitionNodePropertyNodeRangePropertyContainerMountPoint(
      containerPath: map['containerPath'] as String,
      readOnly: map['readOnly'] as bool,
      sourceVolume: map['sourceVolume'] as String,
    );
  }
}
