// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a single version.
class SecretVersionCloudfunctionsV2alpha {
  /// Relative path of the file under the mount path where the secret value for this version will be fetched and made available. For example, setting the mount_path as '/etc/secrets' and path as `secret_foo` would mount the secret value file at `/etc/secrets/secret_foo`.
  final String? path;

  /// Version of the secret (version number or the string 'latest'). It is preferable to use `latest` version with secret volumes as secret value changes are reflected immediately.
  final String? version;

  SecretVersionCloudfunctionsV2alpha({
    this.path,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory SecretVersionCloudfunctionsV2alpha.fromMap(Map<String, dynamic> map) {
    return SecretVersionCloudfunctionsV2alpha(
      path: map['path'] == null ? null : map['path'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
