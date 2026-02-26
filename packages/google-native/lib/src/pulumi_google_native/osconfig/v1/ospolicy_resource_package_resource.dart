// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_package_resource_apt.dart';
import 'ospolicy_resource_package_resource_deb.dart';
import 'ospolicy_resource_package_resource_desired_state.dart';
import 'ospolicy_resource_package_resource_goo_get.dart';
import 'ospolicy_resource_package_resource_msi.dart';
import 'ospolicy_resource_package_resource_rpm.dart';
import 'ospolicy_resource_package_resource_yum.dart';
import 'ospolicy_resource_package_resource_zypper.dart';

/// A resource that manages a system package.
class OSPolicyResourcePackageResource {
  /// A package managed by Apt.
  final OSPolicyResourcePackageResourceAPT? apt;

  /// A deb package file.
  final OSPolicyResourcePackageResourceDeb? deb;

  /// The desired state the agent should maintain for this package.
  final OSPolicyResourcePackageResourceDesiredState desiredState;

  /// A package managed by GooGet.
  final OSPolicyResourcePackageResourceGooGet? googet;

  /// An MSI package.
  final OSPolicyResourcePackageResourceMSI? msi;

  /// An rpm package file.
  final OSPolicyResourcePackageResourceRPM? rpm;

  /// A package managed by YUM.
  final OSPolicyResourcePackageResourceYUM? yum;

  /// A package managed by Zypper.
  final OSPolicyResourcePackageResourceZypper? zypper;

  OSPolicyResourcePackageResource({
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
    map['desiredState'] = desiredState.value;
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

  factory OSPolicyResourcePackageResource.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResource(
      apt: map['apt'] == null
          ? null
          : OSPolicyResourcePackageResourceAPT.fromMap(
              (map['apt'] as Map).cast<String, dynamic>()),
      deb: map['deb'] == null
          ? null
          : OSPolicyResourcePackageResourceDeb.fromMap(
              (map['deb'] as Map).cast<String, dynamic>()),
      desiredState: OSPolicyResourcePackageResourceDesiredState.fromValue(
          map['desiredState'] as String),
      googet: map['googet'] == null
          ? null
          : OSPolicyResourcePackageResourceGooGet.fromMap(
              (map['googet'] as Map).cast<String, dynamic>()),
      msi: map['msi'] == null
          ? null
          : OSPolicyResourcePackageResourceMSI.fromMap(
              (map['msi'] as Map).cast<String, dynamic>()),
      rpm: map['rpm'] == null
          ? null
          : OSPolicyResourcePackageResourceRPM.fromMap(
              (map['rpm'] as Map).cast<String, dynamic>()),
      yum: map['yum'] == null
          ? null
          : OSPolicyResourcePackageResourceYUM.fromMap(
              (map['yum'] as Map).cast<String, dynamic>()),
      zypper: map['zypper'] == null
          ? null
          : OSPolicyResourcePackageResourceZypper.fromMap(
              (map['zypper'] as Map).cast<String, dynamic>()),
    );
  }
}
