// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DaemonTaskDefinitionContainerDefinitionMountPoint {
  /// Path on the container to mount the host volume at.
  final pulumi.Input<String?>? containerPath;
  /// If this value is true, the container has read-only access to the volume.
  final pulumi.Input<bool?>? readOnly;
  /// Name of the volume to mount.
  final pulumi.Input<String?>? sourceVolume;

  /// Creates a new [DaemonTaskDefinitionContainerDefinitionMountPoint].
  /// [containerPath] Path on the container to mount the host volume at.
  /// [readOnly] If this value is true, the container has read-only access to the volume.
  /// [sourceVolume] Name of the volume to mount.
  const DaemonTaskDefinitionContainerDefinitionMountPoint({
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

  factory DaemonTaskDefinitionContainerDefinitionMountPoint.fromMap(Map<String, dynamic> map) {
    return DaemonTaskDefinitionContainerDefinitionMountPoint(
      containerPath: (() { final guardedValue = map['containerPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourceVolume: (() { final guardedValue = map['sourceVolume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
