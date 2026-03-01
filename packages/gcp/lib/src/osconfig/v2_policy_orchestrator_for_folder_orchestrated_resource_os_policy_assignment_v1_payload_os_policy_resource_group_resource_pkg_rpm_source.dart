// ignore_for_file: unused_element, unnecessary_cast

import 'v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_rpm_source_gcs.dart';
import 'v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_rpm_source_remote.dart';

class V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpmSource {
  /// Defaults to false. When false, files are subject to validations
  /// based on the file type:
  /// Remote: A checksum must be specified.
  /// Cloud Storage: An object generation number must be specified.
  final bool? allowInsecure;

  /// Specifies a file available as a Cloud Storage Object.
  /// Structure is documented below.
  final V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpmSourceGcs?
  gcs;

  /// A local path within the VM to use.
  final String? localPath;

  /// Specifies a file available via some URI.
  /// Structure is documented below.
  final V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpmSourceRemote?
  remote;

  /// Creates a new [V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpmSource].
  /// [allowInsecure] Defaults to false. When false, files are subject to validations
  /// [gcs] Specifies a file available as a Cloud Storage Object.
  /// [localPath] A local path within the VM to use.
  /// [remote] Specifies a file available via some URI.
  V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpmSource({
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

  factory V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpmSource.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpmSource(
      allowInsecure: map['allowInsecure'] == null
          ? null
          : map['allowInsecure'] as bool,
      gcs: map['gcs'] == null
          ? null
          : V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpmSourceGcs.fromMap(
              (map['gcs'] as Map).cast<String, dynamic>(),
            ),
      localPath: map['localPath'] == null ? null : map['localPath'] as String,
      remote: map['remote'] == null
          ? null
          : V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpmSourceRemote.fromMap(
              (map['remote'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
