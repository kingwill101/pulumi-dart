// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_file_gcs_response.dart';
import 'ospolicy_resource_file_remote_response.dart';

/// A remote or local file.
class OSPolicyResourceFileResponse {
  /// Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified.
  final bool allowInsecure;

  /// A Cloud Storage object.
  final OSPolicyResourceFileGcsResponse gcs;

  /// A local path within the VM to use.
  final String localPath;

  /// A generic remote file.
  final OSPolicyResourceFileRemoteResponse remote;

  /// Creates a new [OSPolicyResourceFileResponse].
  /// [allowInsecure] Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified.
  /// [gcs] A Cloud Storage object.
  /// [localPath] A local path within the VM to use.
  /// [remote] A generic remote file.
  OSPolicyResourceFileResponse({
    required this.allowInsecure,
    required this.gcs,
    required this.localPath,
    required this.remote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInsecure': allowInsecure,
      'gcs': gcs.toMap(),
      'localPath': localPath,
      'remote': remote.toMap(),
    };
  }

  factory OSPolicyResourceFileResponse.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceFileResponse(
      allowInsecure: map['allowInsecure'] as bool,
      gcs: OSPolicyResourceFileGcsResponse.fromMap(
        (map['gcs'] as Map).cast<String, dynamic>(),
      ),
      localPath: map['localPath'] as String,
      remote: OSPolicyResourceFileRemoteResponse.fromMap(
        (map['remote'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
