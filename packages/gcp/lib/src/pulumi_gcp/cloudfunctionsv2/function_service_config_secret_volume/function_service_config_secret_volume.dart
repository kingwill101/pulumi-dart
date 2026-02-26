// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../function_service_config_secret_volume_version/function_service_config_secret_volume_version.dart';

class FunctionServiceConfigSecretVolume {
  /// The path within the container to mount the secret volume. For example, setting the mountPath as /etc/secrets would mount the secret value files under the /etc/secrets directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount path: /etc/secrets
  final String mountPath;

  /// Project identifier (preferably project number but can also be the project ID) of the project that contains the secret. If not set, it will be populated with the function's project assuming that the secret exists in the same project as of the function.
  final String projectId;

  /// Name of the secret in secret manager (not the full resource name).
  final String secret;

  /// List of secret versions to mount for this secret. If empty, the latest version of the secret will be made available in a file named after the secret under the mount point.'
  /// Structure is documented below.
  final List<FunctionServiceConfigSecretVolumeVersion>? versions;

  FunctionServiceConfigSecretVolume({
    required this.mountPath,
    required this.projectId,
    required this.secret,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mountPath'] = mountPath;
    map['projectId'] = projectId;
    map['secret'] = secret;
    final versionsValue = versions;
    if (versionsValue != null) {
      map['versions'] = Input.encodeList<
          FunctionServiceConfigSecretVolumeVersion,
          Map<String, dynamic>>(versionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory FunctionServiceConfigSecretVolume.fromMap(Map<String, dynamic> map) {
    return FunctionServiceConfigSecretVolume(
      mountPath: map['mountPath'] as String,
      projectId: map['projectId'] as String,
      secret: map['secret'] as String,
      versions: map['versions'] == null
          ? null
          : Input.decodeList<FunctionServiceConfigSecretVolumeVersion>(
              map['versions'],
              (value) => FunctionServiceConfigSecretVolumeVersion.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
