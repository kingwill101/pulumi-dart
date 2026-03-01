// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_package_resource_aptosconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_deb_osconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_desired_state_osconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_goo_get_osconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_msiosconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_rpmosconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_yumosconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_zypper_osconfig_v1alpha.dart';

/// A resource that manages a system package.
class OSPolicyResourcePackageResourceOsconfigV1alpha {
  /// A package managed by Apt.
  final OSPolicyResourcePackageResourceAPTOsconfigV1alpha? apt;

  /// A deb package file.
  final OSPolicyResourcePackageResourceDebOsconfigV1alpha? deb;

  /// The desired state the agent should maintain for this package.
  final OSPolicyResourcePackageResourceDesiredStateOsconfigV1alpha desiredState;

  /// A package managed by GooGet.
  final OSPolicyResourcePackageResourceGooGetOsconfigV1alpha? googet;

  /// An MSI package.
  final OSPolicyResourcePackageResourceMSIOsconfigV1alpha? msi;

  /// An rpm package file.
  final OSPolicyResourcePackageResourceRPMOsconfigV1alpha? rpm;

  /// A package managed by YUM.
  final OSPolicyResourcePackageResourceYUMOsconfigV1alpha? yum;

  /// A package managed by Zypper.
  final OSPolicyResourcePackageResourceZypperOsconfigV1alpha? zypper;

  /// Creates a new [OSPolicyResourcePackageResourceOsconfigV1alpha].
  /// [apt] A package managed by Apt.
  /// [deb] A deb package file.
  /// [desiredState] The desired state the agent should maintain for this package.
  /// [googet] A package managed by GooGet.
  /// [msi] An MSI package.
  /// [rpm] An rpm package file.
  /// [yum] A package managed by YUM.
  /// [zypper] A package managed by Zypper.
  OSPolicyResourcePackageResourceOsconfigV1alpha({
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
    return <String, dynamic>{
      'apt': ?apt == null ? null : apt!.toMap(),
      'deb': ?deb == null ? null : deb!.toMap(),
      'desiredState': desiredState.value,
      'googet': ?googet == null ? null : googet!.toMap(),
      'msi': ?msi == null ? null : msi!.toMap(),
      'rpm': ?rpm == null ? null : rpm!.toMap(),
      'yum': ?yum == null ? null : yum!.toMap(),
      'zypper': ?zypper == null ? null : zypper!.toMap(),
    };
  }

  factory OSPolicyResourcePackageResourceOsconfigV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return OSPolicyResourcePackageResourceOsconfigV1alpha(
      apt: map['apt'] == null
          ? null
          : OSPolicyResourcePackageResourceAPTOsconfigV1alpha.fromMap(
              (map['apt'] as Map).cast<String, dynamic>(),
            ),
      deb: map['deb'] == null
          ? null
          : OSPolicyResourcePackageResourceDebOsconfigV1alpha.fromMap(
              (map['deb'] as Map).cast<String, dynamic>(),
            ),
      desiredState:
          OSPolicyResourcePackageResourceDesiredStateOsconfigV1alpha.fromValue(
            map['desiredState'] as String,
          ),
      googet: map['googet'] == null
          ? null
          : OSPolicyResourcePackageResourceGooGetOsconfigV1alpha.fromMap(
              (map['googet'] as Map).cast<String, dynamic>(),
            ),
      msi: map['msi'] == null
          ? null
          : OSPolicyResourcePackageResourceMSIOsconfigV1alpha.fromMap(
              (map['msi'] as Map).cast<String, dynamic>(),
            ),
      rpm: map['rpm'] == null
          ? null
          : OSPolicyResourcePackageResourceRPMOsconfigV1alpha.fromMap(
              (map['rpm'] as Map).cast<String, dynamic>(),
            ),
      yum: map['yum'] == null
          ? null
          : OSPolicyResourcePackageResourceYUMOsconfigV1alpha.fromMap(
              (map['yum'] as Map).cast<String, dynamic>(),
            ),
      zypper: map['zypper'] == null
          ? null
          : OSPolicyResourcePackageResourceZypperOsconfigV1alpha.fromMap(
              (map['zypper'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
