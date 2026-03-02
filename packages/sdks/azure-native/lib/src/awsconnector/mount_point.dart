// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of MountPoint
class MountPoint {
  /// The path on the container to mount the host volume at.
  final pulumi.Input<String>? containerPath;
  /// If this value is ``true``, the container has read-only access to the volume. If this value is ``false``, then the container can write to the volume. The default value is ``false``.
  final pulumi.Input<bool>? readOnly;
  /// The name of the volume to mount. Must be a volume name referenced in the ``name`` parameter of task definition ``volume``.
  final pulumi.Input<String>? sourceVolume;

  /// Creates a new [MountPoint].
  /// [containerPath] The path on the container to mount the host volume at.
  /// [readOnly] If this value is ``true``, the container has read-only access to the volume. If this value is ``false``, then the container can write to the volume. The default value is ``false``.
  /// [sourceVolume] The name of the volume to mount. Must be a volume name referenced in the ``name`` parameter of task definition ``volume``.
  MountPoint({
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

  factory MountPoint.fromMap(Map<String, dynamic> map) {
    return MountPoint(
      containerPath: map['containerPath'] == null ? null : (map['containerPath'] as String).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly'] as bool).input(),
      sourceVolume: map['sourceVolume'] == null ? null : (map['sourceVolume'] as String).input(),
    );
  }
}

