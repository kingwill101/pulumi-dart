// ignore_for_file: unused_element, unnecessary_cast


class GetTriggerBuildOptionVolume {
  /// Name of the volume to mount.
  ///
  /// Volume names must be unique per build step and must be valid names for Docker volumes.
  /// Each named volume must be used by at least two build steps.
  final String name;
  /// Path at which to mount the volume.
  ///
  /// Paths must be absolute and cannot conflict with other volume paths on the same
  /// build step or with certain reserved volume paths.
  final String path;

  /// Creates a new [GetTriggerBuildOptionVolume].
  /// [name] Name of the volume to mount.
  /// [path] Path at which to mount the volume.
  GetTriggerBuildOptionVolume({
    required this.name,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'path': path,
    };
  }

  factory GetTriggerBuildOptionVolume.fromMap(Map<String, dynamic> map) {
    return GetTriggerBuildOptionVolume(
      name: map['name'] as String,
      path: map['path'] as String,
    );
  }
}

