// ignore_for_file: unused_element, unnecessary_cast

import 'os_policy_assignment_os_policy_resource_group_resource_exec_validate_file_gcs.dart';
import 'os_policy_assignment_os_policy_resource_group_resource_exec_validate_file_remote.dart';

class OsPolicyAssignmentOsPolicyResourceGroupResourceExecValidateFile {
  /// Defaults to false. When false, files are
  /// subject to validations based on the file type: Remote: A checksum must be
  /// specified. Cloud Storage: An object generation number must be specified.
  final bool? allowInsecure;

  /// A Cloud Storage object. Structure is
  /// documented below.
  final OsPolicyAssignmentOsPolicyResourceGroupResourceExecValidateFileGcs? gcs;

  /// A local path within the VM to use.
  final String? localPath;

  /// A generic remote file. Structure is
  /// documented below.
  final OsPolicyAssignmentOsPolicyResourceGroupResourceExecValidateFileRemote?
      remote;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourceExecValidateFile].
  /// [allowInsecure] Defaults to false. When false, files are
  /// [gcs] A Cloud Storage object. Structure is
  /// [localPath] A local path within the VM to use.
  /// [remote] A generic remote file. Structure is
  OsPolicyAssignmentOsPolicyResourceGroupResourceExecValidateFile({
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

  factory OsPolicyAssignmentOsPolicyResourceGroupResourceExecValidateFile.fromMap(
      Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourceExecValidateFile(
      allowInsecure:
          map['allowInsecure'] == null ? null : map['allowInsecure'] as bool,
      gcs: map['gcs'] == null
          ? null
          : OsPolicyAssignmentOsPolicyResourceGroupResourceExecValidateFileGcs
              .fromMap((map['gcs'] as Map).cast<String, dynamic>()),
      localPath: map['localPath'] == null ? null : map['localPath'] as String,
      remote: map['remote'] == null
          ? null
          : OsPolicyAssignmentOsPolicyResourceGroupResourceExecValidateFileRemote
              .fromMap((map['remote'] as Map).cast<String, dynamic>()),
    );
  }
}
