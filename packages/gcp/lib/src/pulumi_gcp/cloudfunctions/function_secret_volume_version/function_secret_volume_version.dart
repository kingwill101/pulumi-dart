// ignore_for_file: unused_element, unnecessary_cast

class FunctionSecretVolumeVersion {
  /// Relative path of the file under the mount path where the secret value for this version will be fetched and made available. For example, setting the<span pulumi-lang-nodejs=" mountPath " pulumi-lang-dotnet=" MountPath " pulumi-lang-go=" mountPath " pulumi-lang-python=" mount_path " pulumi-lang-yaml=" mountPath " pulumi-lang-java=" mountPath "> mount_path </span>as "/etc/secrets" and path as "/secret_foo" would mount the secret value file at "/etc/secrets/secret_foo".
  final String path;

  /// Version of the secret (version number or the string "latest"). It is preferable to use "latest" version with secret volumes as secret value changes are reflected immediately.
  final String version;

  FunctionSecretVolumeVersion({
    required this.path,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    map['version'] = version;
    return map;
  }

  factory FunctionSecretVolumeVersion.fromMap(Map<String, dynamic> map) {
    return FunctionSecretVolumeVersion(
      path: map['path'] as String,
      version: map['version'] as String,
    );
  }
}
