// ignore_for_file: unused_element, unnecessary_cast

import 'os_policy_assignment_os_policy_resource_group_resource_pkg_deb_source_gcs.dart';
import 'os_policy_assignment_os_policy_resource_group_resource_pkg_deb_source_remote.dart';

class OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDebSource {
  /// Defaults to false. When false, files are
  /// subject to validations based on the file type: Remote: A checksum must be
  /// specified. Cloud Storage: An object generation number must be specified.
  final bool? allowInsecure;

  /// A Cloud Storage object. Structure is
  /// documented below.
  final OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDebSourceGcs? gcs;

  /// A local path within the VM to use.
  final String? localPath;

  /// A generic remote file. Structure is
  /// documented below.
  final OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDebSourceRemote?
  remote;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDebSource].
  /// [allowInsecure] Defaults to false. When false, files are
  /// [gcs] A Cloud Storage object. Structure is
  /// [localPath] A local path within the VM to use.
  /// [remote] A generic remote file. Structure is
  OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDebSource({
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

  factory OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDebSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDebSource(
      allowInsecure: map['allowInsecure'] == null
          ? null
          : map['allowInsecure'] as bool,
      gcs: map['gcs'] == null
          ? null
          : OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDebSourceGcs.fromMap(
              (map['gcs'] as Map).cast<String, dynamic>(),
            ),
      localPath: map['localPath'] == null ? null : map['localPath'] as String,
      remote: map['remote'] == null
          ? null
          : OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDebSourceRemote.fromMap(
              (map['remote'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
