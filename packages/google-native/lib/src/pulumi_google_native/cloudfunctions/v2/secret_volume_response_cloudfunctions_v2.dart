// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_version_response_cloudfunctions_v2.dart';

/// Configuration for a secret volume. It has the information necessary to fetch the secret value from secret manager and make it available as files mounted at the requested paths within the application container.
class SecretVolumeResponseCloudfunctionsV2 {
  /// The path within the container to mount the secret volume. For example, setting the mount_path as `/etc/secrets` would mount the secret value files under the `/etc/secrets` directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount path: /etc/secrets
  final String mountPath;

  /// Project identifier (preferably project number but can also be the project ID) of the project that contains the secret. If not set, it is assumed that the secret is in the same project as the function.
  final String project;

  /// Name of the secret in secret manager (not the full resource name).
  final String secret;

  /// List of secret versions to mount for this secret. If empty, the `latest` version of the secret will be made available in a file named after the secret under the mount point.
  final List<SecretVersionResponseCloudfunctionsV2> versions;

  SecretVolumeResponseCloudfunctionsV2({
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
    map['versions'] = pulumi.Input.encodeList<
        SecretVersionResponseCloudfunctionsV2,
        Map<String, dynamic>>(versions, (value) => value.toMap());
    return map;
  }

  factory SecretVolumeResponseCloudfunctionsV2.fromMap(
      Map<String, dynamic> map) {
    return SecretVolumeResponseCloudfunctionsV2(
      mountPath: map['mountPath'] as String,
      project: map['project'] as String,
      secret: map['secret'] as String,
      versions: pulumi.Input.decodeList<SecretVersionResponseCloudfunctionsV2>(
          map['versions'],
          (value) => SecretVersionResponseCloudfunctionsV2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
