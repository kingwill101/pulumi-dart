// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_file_gcs_response_osconfig_v1alpha.dart';
import 'ospolicy_resource_file_remote_response_osconfig_v1alpha.dart';

/// A remote or local file.
class OSPolicyResourceFileResponseOsconfigV1alpha {
  /// Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified.
  final bool allowInsecure;

  /// A Cloud Storage object.
  final OSPolicyResourceFileGcsResponseOsconfigV1alpha gcs;

  /// A local path within the VM to use.
  final String localPath;

  /// A generic remote file.
  final OSPolicyResourceFileRemoteResponseOsconfigV1alpha remote;

  /// Creates a new [OSPolicyResourceFileResponseOsconfigV1alpha].
  /// [allowInsecure] Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified.
  /// [gcs] A Cloud Storage object.
  /// [localPath] A local path within the VM to use.
  /// [remote] A generic remote file.
  OSPolicyResourceFileResponseOsconfigV1alpha({
    required this.allowInsecure,
    required this.gcs,
    required this.localPath,
    required this.remote,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowInsecure'] = allowInsecure;
    map['gcs'] = gcs.toMap();
    map['localPath'] = localPath;
    map['remote'] = remote.toMap();
    return map;
  }

  factory OSPolicyResourceFileResponseOsconfigV1alpha.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourceFileResponseOsconfigV1alpha(
      allowInsecure: map['allowInsecure'] as bool,
      gcs: OSPolicyResourceFileGcsResponseOsconfigV1alpha.fromMap(
          (map['gcs'] as Map).cast<String, dynamic>()),
      localPath: map['localPath'] as String,
      remote: OSPolicyResourceFileRemoteResponseOsconfigV1alpha.fromMap(
          (map['remote'] as Map).cast<String, dynamic>()),
    );
  }
}
