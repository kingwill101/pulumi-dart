// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for a single version.
class SecretVersionCloudfunctionsV2beta {
  /// Relative path of the file under the mount path where the secret value for this version will be fetched and made available. For example, setting the mount_path as '/etc/secrets' and path as `secret_foo` would mount the secret value file at `/etc/secrets/secret_foo`.
  final String? path;
  /// Version of the secret (version number or the string 'latest'). It is preferable to use `latest` version with secret volumes as secret value changes are reflected immediately.
  final String? version;

  /// Creates a new [SecretVersionCloudfunctionsV2beta].
  /// [path] Relative path of the file under the mount path where the secret value for this version will be fetched and made available. For example, setting the mount_path as '/etc/secrets' and path as `secret_foo` would mount the secret value file at `/etc/secrets/secret_foo`.
  /// [version] Version of the secret (version number or the string 'latest'). It is preferable to use `latest` version with secret volumes as secret value changes are reflected immediately.
  SecretVersionCloudfunctionsV2beta({
    this.path,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'version': ?version,
    };
  }

  factory SecretVersionCloudfunctionsV2beta.fromMap(Map<String, dynamic> map) {
    return SecretVersionCloudfunctionsV2beta(
      path: map['path'] == null ? null : map['path'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

