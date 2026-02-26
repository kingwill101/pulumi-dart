// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a single version.
class SecretVersionResponse {
  /// Relative path of the file under the mount path where the secret value for this version will be fetched and made available. For example, setting the mount_path as '/etc/secrets' and path as `/secret_foo` would mount the secret value file at `/etc/secrets/secret_foo`.
  final String path;

  /// Version of the secret (version number or the string 'latest'). It is preferable to use `latest` version with secret volumes as secret value changes are reflected immediately.
  final String version;

  SecretVersionResponse({
    required this.path,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    map['version'] = version;
    return map;
  }

  factory SecretVersionResponse.fromMap(Map<String, dynamic> map) {
    return SecretVersionResponse(
      path: map['path'] as String,
      version: map['version'] as String,
    );
  }
}
