// ignore_for_file: unused_element, unnecessary_cast

/// VersionToPath maps a specific version of a secret to a relative file to mount to, relative to VolumeMount's mount_path.
class GoogleCloudRunV2VersionToPath {
  /// Integer octal mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or not set, the Volume's default mode will be used. Notes * Internally, a umask of 0222 will be applied to any non-zero value. * This is an integer representation of the mode bits. So, the octal integer value should look exactly as the chmod numeric notation with a leading zero. Some examples: for chmod 777 (a=rwx), set to 0777 (octal) or 511 (base-10). For chmod 640 (u=rw,g=r), set to 0640 (octal) or 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493 (base-10). * This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  final int? mode;

  /// The relative path of the secret in the container.
  final String path;

  /// The Cloud Secret Manager secret version. Can be 'latest' for the latest value, or an integer or a secret alias for a specific version.
  final String? version;

  /// Creates a new [GoogleCloudRunV2VersionToPath].
  /// [mode] Integer octal mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or not set, the Volume's default mode will be used. Notes * Internally, a umask of 0222 will be applied to any non-zero value. * This is an integer representation of the mode bits. So, the octal integer value should look exactly as the chmod numeric notation with a leading zero. Some examples: for chmod 777 (a=rwx), set to 0777 (octal) or 511 (base-10). For chmod 640 (u=rw,g=r), set to 0640 (octal) or 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493 (base-10). * This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  /// [path] The relative path of the secret in the container.
  /// [version] The Cloud Secret Manager secret version. Can be 'latest' for the latest value, or an integer or a secret alias for a specific version.
  GoogleCloudRunV2VersionToPath({
    this.mode,
    required this.path,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    map['path'] = path;
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory GoogleCloudRunV2VersionToPath.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2VersionToPath(
      mode: map['mode'] == null ? null : map['mode'] as int,
      path: map['path'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
