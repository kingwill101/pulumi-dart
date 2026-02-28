// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_version.dart';

/// Configuration for a secret volume. It has the information necessary to fetch the secret value from secret manager and make it available as files mounted at the requested paths within the application container. Secret value is not a part of the configuration. Every filesystem read operation performs a lookup in secret manager to retrieve the secret value.
class SecretVolume {
  /// The path within the container to mount the secret volume. For example, setting the mount_path as `/etc/secrets` would mount the secret value files under the `/etc/secrets` directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount paths: /etc/secrets Restricted mount paths: /cloudsql, /dev/log, /pod, /proc, /var/log
  final String? mountPath;

  /// Project identifier (preferrably project number but can also be the project ID) of the project that contains the secret. If not set, it will be populated with the function's project assuming that the secret exists in the same project as of the function.
  final String? project;

  /// Name of the secret in secret manager (not the full resource name).
  final String? secret;

  /// List of secret versions to mount for this secret. If empty, the `latest` version of the secret will be made available in a file named after the secret under the mount point.
  final List<SecretVersion>? versions;

  /// Creates a new [SecretVolume].
  /// [mountPath] The path within the container to mount the secret volume. For example, setting the mount_path as `/etc/secrets` would mount the secret value files under the `/etc/secrets` directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount paths: /etc/secrets Restricted mount paths: /cloudsql, /dev/log, /pod, /proc, /var/log
  /// [project] Project identifier (preferrably project number but can also be the project ID) of the project that contains the secret. If not set, it will be populated with the function's project assuming that the secret exists in the same project as of the function.
  /// [secret] Name of the secret in secret manager (not the full resource name).
  /// [versions] List of secret versions to mount for this secret. If empty, the `latest` version of the secret will be made available in a file named after the secret under the mount point.
  SecretVolume({
    this.mountPath,
    this.project,
    this.secret,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mountPathValue = mountPath;
    if (mountPathValue != null) {
      map['mountPath'] = mountPathValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final secretValue = secret;
    if (secretValue != null) {
      map['secret'] = secretValue;
    }
    final versionsValue = versions;
    if (versionsValue != null) {
      map['versions'] =
          pulumi.Input.encodeList<SecretVersion, Map<String, dynamic>>(
              versionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SecretVolume.fromMap(Map<String, dynamic> map) {
    return SecretVolume(
      mountPath: map['mountPath'] == null ? null : map['mountPath'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      secret: map['secret'] == null ? null : map['secret'] as String,
      versions: map['versions'] == null
          ? null
          : pulumi.Input.decodeList<SecretVersion>(
              map['versions'],
              (value) => SecretVersion.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
