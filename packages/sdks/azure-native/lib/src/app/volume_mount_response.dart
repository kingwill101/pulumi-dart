// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Volume mount for the Container App.
class VolumeMountResponse {
  /// Path within the container at which the volume should be mounted.Must not contain ':'.
  final pulumi.Input<String>? mountPath;
  /// Path within the volume from which the container's volume should be mounted. Defaults to "" (volume's root).
  final pulumi.Input<String>? subPath;
  /// This must match the Name of a Volume.
  final pulumi.Input<String>? volumeName;

  /// Creates a new [VolumeMountResponse].
  /// [mountPath] Path within the container at which the volume should be mounted.Must not contain ':'.
  /// [subPath] Path within the volume from which the container's volume should be mounted. Defaults to "" (volume's root).
  /// [volumeName] This must match the Name of a Volume.
  VolumeMountResponse({
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

  factory VolumeMountResponse.fromMap(Map<String, dynamic> map) {
    return VolumeMountResponse(
      mountPath: (() { final guardedValue = map['mountPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subPath: (() { final guardedValue = map['subPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeName: (() { final guardedValue = map['volumeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

