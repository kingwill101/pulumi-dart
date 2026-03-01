// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a single version.
class SecretVersionResponseCloudfunctionsV2alpha {
  /// Relative path of the file under the mount path where the secret value for this version will be fetched and made available. For example, setting the mount_path as '/etc/secrets' and path as `secret_foo` would mount the secret value file at `/etc/secrets/secret_foo`.
  final String path;

  /// Version of the secret (version number or the string 'latest'). It is preferable to use `latest` version with secret volumes as secret value changes are reflected immediately.
  final String version;

  /// Creates a new [SecretVersionResponseCloudfunctionsV2alpha].
  /// [path] Relative path of the file under the mount path where the secret value for this version will be fetched and made available. For example, setting the mount_path as '/etc/secrets' and path as `secret_foo` would mount the secret value file at `/etc/secrets/secret_foo`.
  /// [version] Version of the secret (version number or the string 'latest'). It is preferable to use `latest` version with secret volumes as secret value changes are reflected immediately.
  SecretVersionResponseCloudfunctionsV2alpha({
    required this.path,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'path': path, 'version': version};
  }

  factory SecretVersionResponseCloudfunctionsV2alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecretVersionResponseCloudfunctionsV2alpha(
      path: map['path'] as String,
      version: map['version'] as String,
    );
  }
}
