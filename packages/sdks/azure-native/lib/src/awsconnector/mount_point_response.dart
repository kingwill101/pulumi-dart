// ignore_for_file: unused_element, unnecessary_cast


/// Definition of MountPoint
class MountPointResponse {
  /// The path on the container to mount the host volume at.
  final String? containerPath;
  /// If this value is ``true``, the container has read-only access to the volume. If this value is ``false``, then the container can write to the volume. The default value is ``false``.
  final bool? readOnly;
  /// The name of the volume to mount. Must be a volume name referenced in the ``name`` parameter of task definition ``volume``.
  final String? sourceVolume;

  /// Creates a new [MountPointResponse].
  /// [containerPath] The path on the container to mount the host volume at.
  /// [readOnly] If this value is ``true``, the container has read-only access to the volume. If this value is ``false``, then the container can write to the volume. The default value is ``false``.
  /// [sourceVolume] The name of the volume to mount. Must be a volume name referenced in the ``name`` parameter of task definition ``volume``.
  MountPointResponse({
    this.containerPath,
    this.readOnly,
    this.sourceVolume,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPath': ?containerPath,
      'readOnly': ?readOnly,
      'sourceVolume': ?sourceVolume,
    };
  }

  factory MountPointResponse.fromMap(Map<String, dynamic> map) {
    return MountPointResponse(
      containerPath: map['containerPath'] == null ? null : map['containerPath'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      sourceVolume: map['sourceVolume'] == null ? null : map['sourceVolume'] as String,
    );
  }
}

