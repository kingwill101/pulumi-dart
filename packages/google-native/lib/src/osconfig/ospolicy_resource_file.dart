// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_file_gcs.dart';
import 'ospolicy_resource_file_remote.dart';

/// A remote or local file.
class OSPolicyResourceFile {
  /// Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified.
  final bool? allowInsecure;
  /// A Cloud Storage object.
  final OSPolicyResourceFileGcs? gcs;
  /// A local path within the VM to use.
  final String? localPath;
  /// A generic remote file.
  final OSPolicyResourceFileRemote? remote;

  /// Creates a new [OSPolicyResourceFile].
  /// [allowInsecure] Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified.
  /// [gcs] A Cloud Storage object.
  /// [localPath] A local path within the VM to use.
  /// [remote] A generic remote file.
  OSPolicyResourceFile({
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

  factory OSPolicyResourceFile.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceFile(
      allowInsecure: map['allowInsecure'] == null ? null : map['allowInsecure'] as bool,
      gcs: map['gcs'] == null ? null : OSPolicyResourceFileGcs.fromMap((map['gcs'] as Map).cast<String, dynamic>()),
      localPath: map['localPath'] == null ? null : map['localPath'] as String,
      remote: map['remote'] == null ? null : OSPolicyResourceFileRemote.fromMap((map['remote'] as Map).cast<String, dynamic>()),
    );
  }
}

