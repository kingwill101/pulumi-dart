// ignore_for_file: unused_element, unnecessary_cast

import '../v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_apt/v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_apt.dart';
import '../v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_deb/v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_deb.dart';
import '../v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_googet/v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_googet.dart';
import '../v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_msi/v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_msi.dart';
import '../v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_rpm/v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_rpm.dart';
import '../v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_yum/v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_yum.dart';
import '../v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_zypper/v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group_resource_pkg_zypper.dart';

class V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkg {
  /// A package managed by APT.
  /// - install: `apt-get update && apt-get -y install [name]`
  /// - remove: `apt-get -y remove [name]`
  /// Structure is documented below.
  final V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgApt?
      apt;

  /// A deb package file. dpkg packages only support INSTALLED state.
  /// Structure is documented below.
  final V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgDeb?
      deb;

  /// The desired state the agent should maintain for this package.
  /// Possible values are: `INSTALLED`, `REMOVED`.
  final String desiredState;

  /// A package managed by GooGet.
  /// - install: `googet -noconfirm install package`
  /// - remove: `googet -noconfirm remove package`
  /// Structure is documented below.
  final V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgGooget?
      googet;

  /// An MSI package. MSI packages only support INSTALLED state.
  /// Structure is documented below.
  final V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsi?
      msi;

  /// An RPM package file. RPM packages only support INSTALLED state.
  /// Structure is documented below.
  final V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpm?
      rpm;

  /// A package managed by YUM.
  /// - install: `yum -y install package`
  /// - remove: `yum -y remove package`
  /// Structure is documented below.
  final V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgYum?
      yum;

  /// A package managed by Zypper.
  /// - install: `zypper -y install package`
  /// - remove: `zypper -y rm package`
  /// Structure is documented below.
  final V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgZypper?
      zypper;

  V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkg({
    this.apt,
    this.deb,
    required this.desiredState,
    this.googet,
    this.msi,
    this.rpm,
    this.yum,
    this.zypper,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aptValue = apt;
    if (aptValue != null) {
      map['apt'] = aptValue.toMap();
    }
    final debValue = deb;
    if (debValue != null) {
      map['deb'] = debValue.toMap();
    }
    map['desiredState'] = desiredState;
    final googetValue = googet;
    if (googetValue != null) {
      map['googet'] = googetValue.toMap();
    }
    final msiValue = msi;
    if (msiValue != null) {
      map['msi'] = msiValue.toMap();
    }
    final rpmValue = rpm;
    if (rpmValue != null) {
      map['rpm'] = rpmValue.toMap();
    }
    final yumValue = yum;
    if (yumValue != null) {
      map['yum'] = yumValue.toMap();
    }
    final zypperValue = zypper;
    if (zypperValue != null) {
      map['zypper'] = zypperValue.toMap();
    }
    return map;
  }

  factory V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkg.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkg(
      apt: map['apt'] == null
          ? null
          : V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgApt
              .fromMap((map['apt'] as Map).cast<String, dynamic>()),
      deb: map['deb'] == null
          ? null
          : V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgDeb
              .fromMap((map['deb'] as Map).cast<String, dynamic>()),
      desiredState: map['desiredState'] as String,
      googet: map['googet'] == null
          ? null
          : V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgGooget
              .fromMap((map['googet'] as Map).cast<String, dynamic>()),
      msi: map['msi'] == null
          ? null
          : V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgMsi
              .fromMap((map['msi'] as Map).cast<String, dynamic>()),
      rpm: map['rpm'] == null
          ? null
          : V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgRpm
              .fromMap((map['rpm'] as Map).cast<String, dynamic>()),
      yum: map['yum'] == null
          ? null
          : V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgYum
              .fromMap((map['yum'] as Map).cast<String, dynamic>()),
      zypper: map['zypper'] == null
          ? null
          : V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgZypper
              .fromMap((map['zypper'] as Map).cast<String, dynamic>()),
    );
  }
}
