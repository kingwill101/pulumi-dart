// ignore_for_file: unused_element, unnecessary_cast


/// The properties of the volume mount.
class VolumeMountResponse {
  /// The path within the container where the volume should be mounted. Must not contain colon (:).
  final String mountPath;
  /// The name of the volume mount.
  final String name;
  /// The flag indicating whether the volume mount is read-only.
  final bool? readOnly;

  /// Creates a new [VolumeMountResponse].
  /// [mountPath] The path within the container where the volume should be mounted. Must not contain colon (:).
  /// [name] The name of the volume mount.
  /// [readOnly] The flag indicating whether the volume mount is read-only.
  VolumeMountResponse({
    required this.mountPath,
    required this.name,
    this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': mountPath,
      'name': name,
      'readOnly': ?readOnly,
    };
  }

  factory VolumeMountResponse.fromMap(Map<String, dynamic> map) {
    return VolumeMountResponse(
      mountPath: map['mountPath'] as String,
      name: map['name'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
    );
  }
}

