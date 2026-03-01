// ignore_for_file: unused_element, unnecessary_cast


/// Maps a string key to a path within a volume.
class KeyToPath {
  /// key is the key to project.
  final String key;
  /// mode is Optional: mode bits used to set permissions on this file. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  final int? mode;
  /// path is the relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'.
  final String path;

  /// Creates a new [KeyToPath].
  /// [key] key is the key to project.
  /// [mode] mode is Optional: mode bits used to set permissions on this file. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  /// [path] path is the relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'.
  KeyToPath({
    required this.key,
    this.mode,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'mode': ?mode,
      'path': path,
    };
  }

  factory KeyToPath.fromMap(Map<String, dynamic> map) {
    return KeyToPath(
      key: map['key'] as String,
      mode: map['mode'] == null ? null : map['mode'] as int,
      path: map['path'] as String,
    );
  }
}

