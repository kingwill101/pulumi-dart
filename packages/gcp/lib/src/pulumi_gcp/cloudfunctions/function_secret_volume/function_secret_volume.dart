// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../function_secret_volume_version/function_secret_volume_version.dart';

class FunctionSecretVolume {
  /// The path within the container to mount the secret volume. For example, setting the mount_path as "/etc/secrets" would mount the secret value files under the "/etc/secrets" directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount paths: "/etc/secrets" Restricted mount paths: "/cloudsql", "/dev/log", "/pod", "/proc", "/var/log".
  final String mountPath;

  /// Project identifier (due to a known limitation, only project number is supported by this field) of the project that contains the secret. If not set, it will be populated with the function's project, assuming that the secret exists in the same project as of the function.
  final String? projectId;

  /// ID of the secret in secret manager (not the full resource name).
  final String secret;

  /// List of secret versions to mount for this secret. If empty, the "latest" version of the secret will be made available in a file named after the secret under the mount point. Structure is documented below.
  final List<FunctionSecretVolumeVersion>? versions;

  FunctionSecretVolume({
    required this.mountPath,
    this.projectId,
    required this.secret,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mountPath'] = mountPath;
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
    }
    map['secret'] = secret;
    final versionsValue = versions;
    if (versionsValue != null) {
      map['versions'] = pulumi.Input.encodeList<FunctionSecretVolumeVersion,
          Map<String, dynamic>>(versionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory FunctionSecretVolume.fromMap(Map<String, dynamic> map) {
    return FunctionSecretVolume(
      mountPath: map['mountPath'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      secret: map['secret'] as String,
      versions: map['versions'] == null
          ? null
          : pulumi.Input.decodeList<FunctionSecretVolumeVersion>(
              map['versions'],
              (value) => FunctionSecretVolumeVersion.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
