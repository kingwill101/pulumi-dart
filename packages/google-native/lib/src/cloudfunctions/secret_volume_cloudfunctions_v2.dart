// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_version_cloudfunctions_v2.dart';

/// Configuration for a secret volume. It has the information necessary to fetch the secret value from secret manager and make it available as files mounted at the requested paths within the application container.
class SecretVolumeCloudfunctionsV2 {
  /// The path within the container to mount the secret volume. For example, setting the mount_path as `/etc/secrets` would mount the secret value files under the `/etc/secrets` directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount path: /etc/secrets
  final String? mountPath;

  /// Project identifier (preferably project number but can also be the project ID) of the project that contains the secret. If not set, it is assumed that the secret is in the same project as the function.
  final String? project;

  /// Name of the secret in secret manager (not the full resource name).
  final String? secret;

  /// List of secret versions to mount for this secret. If empty, the `latest` version of the secret will be made available in a file named after the secret under the mount point.
  final List<SecretVersionCloudfunctionsV2>? versions;

  /// Creates a new [SecretVolumeCloudfunctionsV2].
  /// [mountPath] The path within the container to mount the secret volume. For example, setting the mount_path as `/etc/secrets` would mount the secret value files under the `/etc/secrets` directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount path: /etc/secrets
  /// [project] Project identifier (preferably project number but can also be the project ID) of the project that contains the secret. If not set, it is assumed that the secret is in the same project as the function.
  /// [secret] Name of the secret in secret manager (not the full resource name).
  /// [versions] List of secret versions to mount for this secret. If empty, the `latest` version of the secret will be made available in a file named after the secret under the mount point.
  SecretVolumeCloudfunctionsV2({
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
      map['versions'] = pulumi.Input.encodeList<SecretVersionCloudfunctionsV2,
          Map<String, dynamic>>(versionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SecretVolumeCloudfunctionsV2.fromMap(Map<String, dynamic> map) {
    return SecretVolumeCloudfunctionsV2(
      mountPath: map['mountPath'] == null ? null : map['mountPath'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      secret: map['secret'] == null ? null : map['secret'] as String,
      versions: map['versions'] == null
          ? null
          : pulumi.Input.decodeList<SecretVersionCloudfunctionsV2>(
              map['versions'],
              (value) => SecretVersionCloudfunctionsV2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
