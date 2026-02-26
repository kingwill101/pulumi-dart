// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_file_gcs2.dart';
import 'ospolicy_resource_file_remote2.dart';

/// A remote or local file.
class OSPolicyResourceFile2 {
  /// Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified.
  final bool? allowInsecure;

  /// A Cloud Storage object.
  final OSPolicyResourceFileGcs2? gcs;

  /// A local path within the VM to use.
  final String? localPath;

  /// A generic remote file.
  final OSPolicyResourceFileRemote2? remote;

  OSPolicyResourceFile2({
    this.allowInsecure,
    this.gcs,
    this.localPath,
    this.remote,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowInsecureValue = allowInsecure;
    if (allowInsecureValue != null) {
      map['allowInsecure'] = allowInsecureValue;
    }
    final gcsValue = gcs;
    if (gcsValue != null) {
      map['gcs'] = gcsValue.toMap();
    }
    final localPathValue = localPath;
    if (localPathValue != null) {
      map['localPath'] = localPathValue;
    }
    final remoteValue = remote;
    if (remoteValue != null) {
      map['remote'] = remoteValue.toMap();
    }
    return map;
  }

  factory OSPolicyResourceFile2.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceFile2(
      allowInsecure:
          map['allowInsecure'] == null ? null : map['allowInsecure'] as bool,
      gcs: map['gcs'] == null
          ? null
          : OSPolicyResourceFileGcs2.fromMap(
              (map['gcs'] as Map).cast<String, dynamic>()),
      localPath: map['localPath'] == null ? null : map['localPath'] as String,
      remote: map['remote'] == null
          ? null
          : OSPolicyResourceFileRemote2.fromMap(
              (map['remote'] as Map).cast<String, dynamic>()),
    );
  }
}
