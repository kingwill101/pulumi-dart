// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_version_response.dart';

/// Configuration for a secret volume. It has the information necessary to fetch the secret value from secret manager and make it available as files mounted at the requested paths within the application container. Secret value is not a part of the configuration. Every filesystem read operation performs a lookup in secret manager to retrieve the secret value.
class SecretVolumeResponse {
  /// The path within the container to mount the secret volume. For example, setting the mount_path as `/etc/secrets` would mount the secret value files under the `/etc/secrets` directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount paths: /etc/secrets Restricted mount paths: /cloudsql, /dev/log, /pod, /proc, /var/log
  final String mountPath;

  /// Project identifier (preferrably project number but can also be the project ID) of the project that contains the secret. If not set, it will be populated with the function's project assuming that the secret exists in the same project as of the function.
  final String project;

  /// Name of the secret in secret manager (not the full resource name).
  final String secret;

  /// List of secret versions to mount for this secret. If empty, the `latest` version of the secret will be made available in a file named after the secret under the mount point.
  final List<SecretVersionResponse> versions;

  SecretVolumeResponse({
    required this.mountPath,
    required this.project,
    required this.secret,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mountPath'] = mountPath;
    map['project'] = project;
    map['secret'] = secret;
    map['versions'] =
        pulumi.Input.encodeList<SecretVersionResponse, Map<String, dynamic>>(
            versions, (value) => value.toMap());
    return map;
  }

  factory SecretVolumeResponse.fromMap(Map<String, dynamic> map) {
    return SecretVolumeResponse(
      mountPath: map['mountPath'] as String,
      project: map['project'] as String,
      secret: map['secret'] as String,
      versions: pulumi.Input.decodeList<SecretVersionResponse>(
          map['versions'],
          (value) => SecretVersionResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
