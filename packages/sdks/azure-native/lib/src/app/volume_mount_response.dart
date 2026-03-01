// ignore_for_file: unused_element, unnecessary_cast


/// Volume mount for the Container App.
class VolumeMountResponse {
  /// Path within the container at which the volume should be mounted.Must not contain ':'.
  final String? mountPath;
  /// Path within the volume from which the container's volume should be mounted. Defaults to "" (volume's root).
  final String? subPath;
  /// This must match the Name of a Volume.
  final String? volumeName;

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
      mountPath: map['mountPath'] == null ? null : map['mountPath'] as String,
      subPath: map['subPath'] == null ? null : map['subPath'] as String,
      volumeName: map['volumeName'] == null ? null : map['volumeName'] as String,
    );
  }
}

