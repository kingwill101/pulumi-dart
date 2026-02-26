// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_package_resource_aptresponse2.dart';
import 'ospolicy_resource_package_resource_deb_response2.dart';
import 'ospolicy_resource_package_resource_goo_get_response2.dart';
import 'ospolicy_resource_package_resource_msiresponse2.dart';
import 'ospolicy_resource_package_resource_rpmresponse2.dart';
import 'ospolicy_resource_package_resource_yumresponse2.dart';
import 'ospolicy_resource_package_resource_zypper_response2.dart';

/// A resource that manages a system package.
class OSPolicyResourcePackageResourceResponse2 {
  /// A package managed by Apt.
  final OSPolicyResourcePackageResourceAPTResponse2 apt;

  /// A deb package file.
  final OSPolicyResourcePackageResourceDebResponse2 deb;

  /// The desired state the agent should maintain for this package.
  final String desiredState;

  /// A package managed by GooGet.
  final OSPolicyResourcePackageResourceGooGetResponse2 googet;

  /// An MSI package.
  final OSPolicyResourcePackageResourceMSIResponse2 msi;

  /// An rpm package file.
  final OSPolicyResourcePackageResourceRPMResponse2 rpm;

  /// A package managed by YUM.
  final OSPolicyResourcePackageResourceYUMResponse2 yum;

  /// A package managed by Zypper.
  final OSPolicyResourcePackageResourceZypperResponse2 zypper;

  OSPolicyResourcePackageResourceResponse2({
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

  factory OSPolicyResourcePackageResourceResponse2.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceResponse2(
      apt: OSPolicyResourcePackageResourceAPTResponse2.fromMap(
          (map['apt'] as Map).cast<String, dynamic>()),
      deb: OSPolicyResourcePackageResourceDebResponse2.fromMap(
          (map['deb'] as Map).cast<String, dynamic>()),
      desiredState: map['desiredState'] as String,
      googet: OSPolicyResourcePackageResourceGooGetResponse2.fromMap(
          (map['googet'] as Map).cast<String, dynamic>()),
      msi: OSPolicyResourcePackageResourceMSIResponse2.fromMap(
          (map['msi'] as Map).cast<String, dynamic>()),
      rpm: OSPolicyResourcePackageResourceRPMResponse2.fromMap(
          (map['rpm'] as Map).cast<String, dynamic>()),
      yum: OSPolicyResourcePackageResourceYUMResponse2.fromMap(
          (map['yum'] as Map).cast<String, dynamic>()),
      zypper: OSPolicyResourcePackageResourceZypperResponse2.fromMap(
          (map['zypper'] as Map).cast<String, dynamic>()),
    );
  }
}
