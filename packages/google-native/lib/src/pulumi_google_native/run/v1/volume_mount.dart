// ignore_for_file: unused_element, unnecessary_cast

/// VolumeMount describes a mounting of a Volume within a container.
class VolumeMount {
  /// Path within the container at which the volume should be mounted. Must not contain ':'.
  final String mountPath;

  /// The name of the volume. There must be a corresponding Volume with the same name.
  final String name;

  /// Sets the mount to be read-only or read-write. Not used by Cloud Run.
  final bool? readOnly;

  /// Path within the volume from which the container's volume should be mounted. Defaults to "" (volume's root).
  final String? subPath;

  VolumeMount({
    required this.mountPath,
    required this.name,
    this.readOnly,
    this.subPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mountPath'] = mountPath;
    map['name'] = name;
    final readOnlyValue = readOnly;
    if (readOnlyValue != null) {
      map['readOnly'] = readOnlyValue;
    }
    final subPathValue = subPath;
    if (subPathValue != null) {
      map['subPath'] = subPathValue;
    }
    return map;
  }

  factory VolumeMount.fromMap(Map<String, dynamic> map) {
    return VolumeMount(
      mountPath: map['mountPath'] as String,
      name: map['name'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      subPath: map['subPath'] == null ? null : map['subPath'] as String,
    );
  }
}
