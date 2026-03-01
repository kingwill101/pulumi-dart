// ignore_for_file: unused_element, unnecessary_cast

import 'os_policy_assignment_os_policy_resource_group_resource_repository_apt.dart';
import 'os_policy_assignment_os_policy_resource_group_resource_repository_goo.dart';
import 'os_policy_assignment_os_policy_resource_group_resource_repository_yum.dart';
import 'os_policy_assignment_os_policy_resource_group_resource_repository_zypper.dart';

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

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourceRepository].
  /// [apt] An Apt Repository. Structure is
  /// [goo] A Goo Repository. Structure is
  /// [yum] A Yum Repository. Structure is
  /// [zypper] A Zypper Repository. Structure is
  OsPolicyAssignmentOsPolicyResourceGroupResourceRepository({
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

  factory OsPolicyAssignmentOsPolicyResourceGroupResourceRepository.fromMap(
    Map<String, dynamic> map,
  ) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourceRepository(
      apt: map['apt'] == null
          ? null
          : OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryApt.fromMap(
              (map['apt'] as Map).cast<String, dynamic>(),
            ),
      goo: map['goo'] == null
          ? null
          : OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryGoo.fromMap(
              (map['goo'] as Map).cast<String, dynamic>(),
            ),
      yum: map['yum'] == null
          ? null
          : OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryYum.fromMap(
              (map['yum'] as Map).cast<String, dynamic>(),
            ),
      zypper: map['zypper'] == null
          ? null
          : OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryZypper.fromMap(
              (map['zypper'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
