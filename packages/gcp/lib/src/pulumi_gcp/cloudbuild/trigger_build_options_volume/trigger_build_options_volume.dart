// ignore_for_file: unused_element, unnecessary_cast

class TriggerBuildOptionsVolume {
  /// Name of the volume to mount.
  /// Volume names must be unique per build step and must be valid names for Docker volumes.
  /// Each named volume must be used by at least two build steps.
  final String? name;

  /// Path at which to mount the volume.
  /// Paths must be absolute and cannot conflict with other volume paths on the same
  /// build step or with certain reserved volume paths.
  final String? path;

  TriggerBuildOptionsVolume({
    this.name,
    this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    return map;
  }

  factory TriggerBuildOptionsVolume.fromMap(Map<String, dynamic> map) {
    return TriggerBuildOptionsVolume(
      name: map['name'] == null ? null : map['name'] as String,
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
