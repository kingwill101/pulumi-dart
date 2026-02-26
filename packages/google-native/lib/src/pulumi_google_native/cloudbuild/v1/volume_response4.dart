// ignore_for_file: unused_element, unnecessary_cast

/// Volume describes a Docker container volume which is mounted into build steps in order to persist files across build step execution.
class VolumeResponse4 {
  /// Name of the volume to mount. Volume names must be unique per build step and must be valid names for Docker volumes. Each named volume must be used by at least two build steps.
  final String name;

  /// Path at which to mount the volume. Paths must be absolute and cannot conflict with other volume paths on the same build step or with certain reserved volume paths.
  final String path;

  VolumeResponse4({
    required this.name,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['path'] = path;
    return map;
  }

  factory VolumeResponse4.fromMap(Map<String, dynamic> map) {
    return VolumeResponse4(
      name: map['name'] as String,
      path: map['path'] as String,
    );
  }
}
