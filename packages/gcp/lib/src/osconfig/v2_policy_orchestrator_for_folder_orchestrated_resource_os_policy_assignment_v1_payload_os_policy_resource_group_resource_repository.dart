// ignore_for_file: unused_element, unnecessary_cast

import 'v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_repository_apt.dart';
import 'v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_repository_goo.dart';
import 'v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_repository_yum.dart';
import 'v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_repository_zypper.dart';

class V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepository {
  /// Represents a single apt package repository. These will be added to
  /// a repo file that will be managed at
  /// `/etc/apt/sources.list.d/google_osconfig.list`.
  /// Structure is documented below.
  final V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryApt?
  apt;

  /// Represents a Goo package repository. These are added to a repo file
  /// that is managed at
  /// `C:/ProgramData/GooGet/repos/google_osconfig.repo`.
  /// Structure is documented below.
  final V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryGoo?
  goo;

  /// Represents a single yum package repository. These are added to a
  /// repo file that is managed at
  /// `/etc/yum.repos.d/google_osconfig.repo`.
  /// Structure is documented below.
  final V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryYum?
  yum;

  /// Represents a single zypper package repository. These are added to a
  /// repo file that is managed at
  /// `/etc/zypp/repos.d/google_osconfig.repo`.
  /// Structure is documented below.
  final V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryZypper?
  zypper;

  /// Creates a new [V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepository].
  /// [apt] Represents a single apt package repository. These will be added to
  /// [goo] Represents a Goo package repository. These are added to a repo file
  /// [yum] Represents a single yum package repository. These are added to a
  /// [zypper] Represents a single zypper package repository. These are added to a
  V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepository({
    this.apt,
    this.goo,
    this.yum,
    this.zypper,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apt': ?apt == null ? null : apt!.toMap(),
      'goo': ?goo == null ? null : goo!.toMap(),
      'yum': ?yum == null ? null : yum!.toMap(),
      'zypper': ?zypper == null ? null : zypper!.toMap(),
    };
  }

  factory V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepository.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepository(
      apt: map['apt'] == null
          ? null
          : V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryApt.fromMap(
              (map['apt'] as Map).cast<String, dynamic>(),
            ),
      goo: map['goo'] == null
          ? null
          : V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryGoo.fromMap(
              (map['goo'] as Map).cast<String, dynamic>(),
            ),
      yum: map['yum'] == null
          ? null
          : V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryYum.fromMap(
              (map['yum'] as Map).cast<String, dynamic>(),
            ),
      zypper: map['zypper'] == null
          ? null
          : V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryZypper.fromMap(
              (map['zypper'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
