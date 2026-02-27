// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_package_resource_aptresponse_osconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_deb_response_osconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_goo_get_response_osconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_msiresponse_osconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_rpmresponse_osconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_yumresponse_osconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_zypper_response_osconfig_v1alpha.dart';

/// A resource that manages a system package.
class OSPolicyResourcePackageResourceResponseOsconfigV1alpha {
  /// A package managed by Apt.
  final OSPolicyResourcePackageResourceAPTResponseOsconfigV1alpha apt;

  /// A deb package file.
  final OSPolicyResourcePackageResourceDebResponseOsconfigV1alpha deb;

  /// The desired state the agent should maintain for this package.
  final String desiredState;

  /// A package managed by GooGet.
  final OSPolicyResourcePackageResourceGooGetResponseOsconfigV1alpha googet;

  /// An MSI package.
  final OSPolicyResourcePackageResourceMSIResponseOsconfigV1alpha msi;

  /// An rpm package file.
  final OSPolicyResourcePackageResourceRPMResponseOsconfigV1alpha rpm;

  /// A package managed by YUM.
  final OSPolicyResourcePackageResourceYUMResponseOsconfigV1alpha yum;

  /// A package managed by Zypper.
  final OSPolicyResourcePackageResourceZypperResponseOsconfigV1alpha zypper;

  OSPolicyResourcePackageResourceResponseOsconfigV1alpha({
    required this.apt,
    required this.deb,
    required this.desiredState,
    required this.googet,
    required this.msi,
    required this.rpm,
    required this.yum,
    required this.zypper,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apt'] = apt.toMap();
    map['deb'] = deb.toMap();
    map['desiredState'] = desiredState;
    map['googet'] = googet.toMap();
    map['msi'] = msi.toMap();
    map['rpm'] = rpm.toMap();
    map['yum'] = yum.toMap();
    map['zypper'] = zypper.toMap();
    return map;
  }

  factory OSPolicyResourcePackageResourceResponseOsconfigV1alpha.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceResponseOsconfigV1alpha(
      apt: OSPolicyResourcePackageResourceAPTResponseOsconfigV1alpha.fromMap(
          (map['apt'] as Map).cast<String, dynamic>()),
      deb: OSPolicyResourcePackageResourceDebResponseOsconfigV1alpha.fromMap(
          (map['deb'] as Map).cast<String, dynamic>()),
      desiredState: map['desiredState'] as String,
      googet:
          OSPolicyResourcePackageResourceGooGetResponseOsconfigV1alpha.fromMap(
              (map['googet'] as Map).cast<String, dynamic>()),
      msi: OSPolicyResourcePackageResourceMSIResponseOsconfigV1alpha.fromMap(
          (map['msi'] as Map).cast<String, dynamic>()),
      rpm: OSPolicyResourcePackageResourceRPMResponseOsconfigV1alpha.fromMap(
          (map['rpm'] as Map).cast<String, dynamic>()),
      yum: OSPolicyResourcePackageResourceYUMResponseOsconfigV1alpha.fromMap(
          (map['yum'] as Map).cast<String, dynamic>()),
      zypper:
          OSPolicyResourcePackageResourceZypperResponseOsconfigV1alpha.fromMap(
              (map['zypper'] as Map).cast<String, dynamic>()),
    );
  }
}
