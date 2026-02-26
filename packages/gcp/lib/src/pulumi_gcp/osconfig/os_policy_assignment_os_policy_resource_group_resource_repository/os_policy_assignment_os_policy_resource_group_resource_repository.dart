// ignore_for_file: unused_element, unnecessary_cast

import '../os_policy_assignment_os_policy_resource_group_resource_repository_apt/os_policy_assignment_os_policy_resource_group_resource_repository_apt.dart';
import '../os_policy_assignment_os_policy_resource_group_resource_repository_goo/os_policy_assignment_os_policy_resource_group_resource_repository_goo.dart';
import '../os_policy_assignment_os_policy_resource_group_resource_repository_yum/os_policy_assignment_os_policy_resource_group_resource_repository_yum.dart';
import '../os_policy_assignment_os_policy_resource_group_resource_repository_zypper/os_policy_assignment_os_policy_resource_group_resource_repository_zypper.dart';

class OsPolicyAssignmentOsPolicyResourceGroupResourceRepository {
  /// An Apt Repository. Structure is
  /// documented below.
  final OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryApt? apt;

  /// A Goo Repository. Structure is
  /// documented below.
  final OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryGoo? goo;

  /// A Yum Repository. Structure is
  /// documented below.
  final OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryYum? yum;

  /// A Zypper Repository. Structure is
  /// documented below.
  final OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryZypper? zypper;

  OsPolicyAssignmentOsPolicyResourceGroupResourceRepository({
    this.apt,
    this.goo,
    this.yum,
    this.zypper,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aptValue = apt;
    if (aptValue != null) {
      map['apt'] = aptValue.toMap();
    }
    final gooValue = goo;
    if (gooValue != null) {
      map['goo'] = gooValue.toMap();
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

  factory OsPolicyAssignmentOsPolicyResourceGroupResourceRepository.fromMap(
      Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourceRepository(
      apt: map['apt'] == null
          ? null
          : OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryApt
              .fromMap((map['apt'] as Map).cast<String, dynamic>()),
      goo: map['goo'] == null
          ? null
          : OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryGoo
              .fromMap((map['goo'] as Map).cast<String, dynamic>()),
      yum: map['yum'] == null
          ? null
          : OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryYum
              .fromMap((map['yum'] as Map).cast<String, dynamic>()),
      zypper: map['zypper'] == null
          ? null
          : OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryZypper
              .fromMap((map['zypper'] as Map).cast<String, dynamic>()),
    );
  }
}
