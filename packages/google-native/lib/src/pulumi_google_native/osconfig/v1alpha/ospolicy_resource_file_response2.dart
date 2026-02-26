// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_file_gcs_response2.dart';
import 'ospolicy_resource_file_remote_response2.dart';

/// A remote or local file.
class OSPolicyResourceFileResponse2 {
  /// Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified.
  final bool allowInsecure;

  /// A Cloud Storage object.
  final OSPolicyResourceFileGcsResponse2 gcs;

  /// A local path within the VM to use.
  final String localPath;

  /// A generic remote file.
  final OSPolicyResourceFileRemoteResponse2 remote;

  OSPolicyResourceFileResponse2({
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

  factory OSPolicyResourceFileResponse2.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceFileResponse2(
      allowInsecure: map['allowInsecure'] as bool,
      gcs: OSPolicyResourceFileGcsResponse2.fromMap(
          (map['gcs'] as Map).cast<String, dynamic>()),
      localPath: map['localPath'] as String,
      remote: OSPolicyResourceFileRemoteResponse2.fromMap(
          (map['remote'] as Map).cast<String, dynamic>()),
    );
  }
}
