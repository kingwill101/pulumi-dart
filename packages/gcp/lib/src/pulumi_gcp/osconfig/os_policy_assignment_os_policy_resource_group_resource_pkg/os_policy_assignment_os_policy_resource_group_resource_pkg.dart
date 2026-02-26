// ignore_for_file: unused_element, unnecessary_cast

import '../os_policy_assignment_os_policy_resource_group_resource_pkg_apt/os_policy_assignment_os_policy_resource_group_resource_pkg_apt.dart';
import '../os_policy_assignment_os_policy_resource_group_resource_pkg_deb/os_policy_assignment_os_policy_resource_group_resource_pkg_deb.dart';
import '../os_policy_assignment_os_policy_resource_group_resource_pkg_googet/os_policy_assignment_os_policy_resource_group_resource_pkg_googet.dart';
import '../os_policy_assignment_os_policy_resource_group_resource_pkg_msi/os_policy_assignment_os_policy_resource_group_resource_pkg_msi.dart';
import '../os_policy_assignment_os_policy_resource_group_resource_pkg_rpm/os_policy_assignment_os_policy_resource_group_resource_pkg_rpm.dart';
import '../os_policy_assignment_os_policy_resource_group_resource_pkg_yum/os_policy_assignment_os_policy_resource_group_resource_pkg_yum.dart';
import '../os_policy_assignment_os_policy_resource_group_resource_pkg_zypper/os_policy_assignment_os_policy_resource_group_resource_pkg_zypper.dart';

class OsPolicyAssignmentOsPolicyResourceGroupResourcePkg {
  /// A package managed by Apt. Structure is
  /// documented below.
  final OsPolicyAssignmentOsPolicyResourceGroupResourcePkgApt? apt;

  /// A deb package file. Structure is
  /// documented below.
  final OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDeb? deb;

  /// The desired state the agent should maintain for
  /// this package. Possible values are: `DESIRED_STATE_UNSPECIFIED`, `INSTALLED`,
  /// `REMOVED`.
  final String desiredState;

  /// A package managed by GooGet. Structure is
  /// documented below.
  final OsPolicyAssignmentOsPolicyResourceGroupResourcePkgGooget? googet;

  /// An MSI package. Structure is
  /// documented below.
  final OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsi? msi;

  /// An rpm package file. Structure is
  /// documented below.
  final OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpm? rpm;

  /// A package managed by YUM. Structure is
  /// documented below.
  final OsPolicyAssignmentOsPolicyResourceGroupResourcePkgYum? yum;

  /// A package managed by Zypper. Structure is
  /// documented below.
  final OsPolicyAssignmentOsPolicyResourceGroupResourcePkgZypper? zypper;

  OsPolicyAssignmentOsPolicyResourceGroupResourcePkg({
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

  factory OsPolicyAssignmentOsPolicyResourceGroupResourcePkg.fromMap(
      Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourcePkg(
      apt: map['apt'] == null
          ? null
          : OsPolicyAssignmentOsPolicyResourceGroupResourcePkgApt.fromMap(
              (map['apt'] as Map).cast<String, dynamic>()),
      deb: map['deb'] == null
          ? null
          : OsPolicyAssignmentOsPolicyResourceGroupResourcePkgDeb.fromMap(
              (map['deb'] as Map).cast<String, dynamic>()),
      desiredState: map['desiredState'] as String,
      googet: map['googet'] == null
          ? null
          : OsPolicyAssignmentOsPolicyResourceGroupResourcePkgGooget.fromMap(
              (map['googet'] as Map).cast<String, dynamic>()),
      msi: map['msi'] == null
          ? null
          : OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsi.fromMap(
              (map['msi'] as Map).cast<String, dynamic>()),
      rpm: map['rpm'] == null
          ? null
          : OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpm.fromMap(
              (map['rpm'] as Map).cast<String, dynamic>()),
      yum: map['yum'] == null
          ? null
          : OsPolicyAssignmentOsPolicyResourceGroupResourcePkgYum.fromMap(
              (map['yum'] as Map).cast<String, dynamic>()),
      zypper: map['zypper'] == null
          ? null
          : OsPolicyAssignmentOsPolicyResourceGroupResourcePkgZypper.fromMap(
              (map['zypper'] as Map).cast<String, dynamic>()),
    );
  }
}
