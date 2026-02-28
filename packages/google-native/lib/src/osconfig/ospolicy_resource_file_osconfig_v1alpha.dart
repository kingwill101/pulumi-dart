// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_file_gcs_osconfig_v1alpha.dart';
import 'ospolicy_resource_file_remote_osconfig_v1alpha.dart';

/// A remote or local file.
class OSPolicyResourceFileOsconfigV1alpha {
  /// Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified.
  final bool? allowInsecure;
  /// A Cloud Storage object.
  final OSPolicyResourceFileGcsOsconfigV1alpha? gcs;
  /// A local path within the VM to use.
  final String? localPath;
  /// A generic remote file.
  final OSPolicyResourceFileRemoteOsconfigV1alpha? remote;

  /// Creates a new [OSPolicyResourceFileOsconfigV1alpha].
  /// [allowInsecure] Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified.
  /// [gcs] A Cloud Storage object.
  /// [localPath] A local path within the VM to use.
  /// [remote] A generic remote file.
  OSPolicyResourceFileOsconfigV1alpha({
    this.allowInsecure,
    this.gcs,
    this.localPath,
    this.remote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInsecure': ?allowInsecure,
      'gcs': ?gcs == null ? null : gcs!.toMap(),
      'localPath': ?localPath,
      'remote': ?remote == null ? null : remote!.toMap(),
    };
  }

  factory OSPolicyResourceFileOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceFileOsconfigV1alpha(
      allowInsecure: map['allowInsecure'] == null ? null : map['allowInsecure'] as bool,
      gcs: map['gcs'] == null ? null : OSPolicyResourceFileGcsOsconfigV1alpha.fromMap((map['gcs'] as Map).cast<String, dynamic>()),
      localPath: map['localPath'] == null ? null : map['localPath'] as String,
      remote: map['remote'] == null ? null : OSPolicyResourceFileRemoteOsconfigV1alpha.fromMap((map['remote'] as Map).cast<String, dynamic>()),
    );
  }
}

