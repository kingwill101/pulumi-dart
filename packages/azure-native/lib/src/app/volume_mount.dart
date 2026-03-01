// ignore_for_file: unused_element, unnecessary_cast


/// Volume mount for the Container App.
class VolumeMount {
  /// Path within the container at which the volume should be mounted.Must not contain ':'.
  final String? mountPath;
  /// Path within the volume from which the container's volume should be mounted. Defaults to "" (volume's root).
  final String? subPath;
  /// This must match the Name of a Volume.
  final String? volumeName;

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
      mountPath: map['mountPath'] == null ? null : map['mountPath'] as String,
      subPath: map['subPath'] == null ? null : map['subPath'] as String,
      volumeName: map['volumeName'] == null ? null : map['volumeName'] as String,
    );
  }
}

