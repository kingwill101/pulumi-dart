// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Volume mount for the Container App.
class VolumeMount {
  /// Path within the container at which the volume should be mounted.Must not contain ':'.
  final pulumi.Input<String>? mountPath;
  /// Path within the volume from which the container's volume should be mounted. Defaults to "" (volume's root).
  final pulumi.Input<String>? subPath;
  /// This must match the Name of a Volume.
  final pulumi.Input<String>? volumeName;

  /// Creates a new [VolumeMount].
  /// [mountPath] Path within the container at which the volume should be mounted.Must not contain ':'.
  /// [subPath] Path within the volume from which the container's volume should be mounted. Defaults to "" (volume's root).
  /// [volumeName] This must match the Name of a Volume.
  VolumeMount({
    this.mountPath,
    this.subPath,
    this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': ?mountPath,
      'subPath': ?subPath,
      'volumeName': ?volumeName,
    };
  }

  factory VolumeMount.fromMap(Map<String, dynamic> map) {
    return VolumeMount(
      mountPath: map['mountPath'] == null ? null : (map['mountPath'] as String).input(),
      subPath: map['subPath'] == null ? null : (map['subPath'] as String).input(),
      volumeName: map['volumeName'] == null ? null : (map['volumeName'] as String).input(),
    );
  }
}

