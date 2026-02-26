// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_package_resource_apt2.dart';
import 'ospolicy_resource_package_resource_deb2.dart';
import 'ospolicy_resource_package_resource_desired_state2.dart';
import 'ospolicy_resource_package_resource_goo_get2.dart';
import 'ospolicy_resource_package_resource_msi2.dart';
import 'ospolicy_resource_package_resource_rpm2.dart';
import 'ospolicy_resource_package_resource_yum2.dart';
import 'ospolicy_resource_package_resource_zypper2.dart';

/// A resource that manages a system package.
class OSPolicyResourcePackageResource2 {
  /// A package managed by Apt.
  final OSPolicyResourcePackageResourceAPT2? apt;

  /// A deb package file.
  final OSPolicyResourcePackageResourceDeb2? deb;

  /// The desired state the agent should maintain for this package.
  final OSPolicyResourcePackageResourceDesiredState2 desiredState;

  /// A package managed by GooGet.
  final OSPolicyResourcePackageResourceGooGet2? googet;

  /// An MSI package.
  final OSPolicyResourcePackageResourceMSI2? msi;

  /// An rpm package file.
  final OSPolicyResourcePackageResourceRPM2? rpm;

  /// A package managed by YUM.
  final OSPolicyResourcePackageResourceYUM2? yum;

  /// A package managed by Zypper.
  final OSPolicyResourcePackageResourceZypper2? zypper;

  OSPolicyResourcePackageResource2({
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

  factory OSPolicyResourcePackageResource2.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResource2(
      apt: map['apt'] == null
          ? null
          : OSPolicyResourcePackageResourceAPT2.fromMap(
              (map['apt'] as Map).cast<String, dynamic>()),
      deb: map['deb'] == null
          ? null
          : OSPolicyResourcePackageResourceDeb2.fromMap(
              (map['deb'] as Map).cast<String, dynamic>()),
      desiredState: OSPolicyResourcePackageResourceDesiredState2.fromValue(
          map['desiredState'] as String),
      googet: map['googet'] == null
          ? null
          : OSPolicyResourcePackageResourceGooGet2.fromMap(
              (map['googet'] as Map).cast<String, dynamic>()),
      msi: map['msi'] == null
          ? null
          : OSPolicyResourcePackageResourceMSI2.fromMap(
              (map['msi'] as Map).cast<String, dynamic>()),
      rpm: map['rpm'] == null
          ? null
          : OSPolicyResourcePackageResourceRPM2.fromMap(
              (map['rpm'] as Map).cast<String, dynamic>()),
      yum: map['yum'] == null
          ? null
          : OSPolicyResourcePackageResourceYUM2.fromMap(
              (map['yum'] as Map).cast<String, dynamic>()),
      zypper: map['zypper'] == null
          ? null
          : OSPolicyResourcePackageResourceZypper2.fromMap(
              (map['zypper'] as Map).cast<String, dynamic>()),
    );
  }
}
