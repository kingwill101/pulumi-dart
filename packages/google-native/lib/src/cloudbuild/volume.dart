// ignore_for_file: unused_element, unnecessary_cast

/// Volume describes a Docker container volume which is mounted into build steps in order to persist files across build step execution.
class Volume {
  /// Name of the volume to mount. Volume names must be unique per build step and must be valid names for Docker volumes. Each named volume must be used by at least two build steps.
  final String? name;

  /// Path at which to mount the volume. Paths must be absolute and cannot conflict with other volume paths on the same build step or with certain reserved volume paths.
  final String? path;

  /// Creates a new [Volume].
  /// [name] Name of the volume to mount. Volume names must be unique per build step and must be valid names for Docker volumes. Each named volume must be used by at least two build steps.
  /// [path] Path at which to mount the volume. Paths must be absolute and cannot conflict with other volume paths on the same build step or with certain reserved volume paths.
  Volume({this.name, this.path});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'path': ?path};
  }

  factory Volume.fromMap(Map<String, dynamic> map) {
    return Volume(
      name: map['name'] == null ? null : map['name'] as String,
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
