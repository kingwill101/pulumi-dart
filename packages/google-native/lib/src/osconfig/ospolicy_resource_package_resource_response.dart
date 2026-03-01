// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_package_resource_aptresponse.dart';
import 'ospolicy_resource_package_resource_deb_response.dart';
import 'ospolicy_resource_package_resource_goo_get_response.dart';
import 'ospolicy_resource_package_resource_msiresponse.dart';
import 'ospolicy_resource_package_resource_rpmresponse.dart';
import 'ospolicy_resource_package_resource_yumresponse.dart';
import 'ospolicy_resource_package_resource_zypper_response.dart';

/// A resource that manages a system package.
class OSPolicyResourcePackageResourceResponse {
  /// A package managed by Apt.
  final OSPolicyResourcePackageResourceAPTResponse apt;

  /// A deb package file.
  final OSPolicyResourcePackageResourceDebResponse deb;

  /// The desired state the agent should maintain for this package.
  final String desiredState;

  /// A package managed by GooGet.
  final OSPolicyResourcePackageResourceGooGetResponse googet;

  /// An MSI package.
  final OSPolicyResourcePackageResourceMSIResponse msi;

  /// An rpm package file.
  final OSPolicyResourcePackageResourceRPMResponse rpm;

  /// A package managed by YUM.
  final OSPolicyResourcePackageResourceYUMResponse yum;

  /// A package managed by Zypper.
  final OSPolicyResourcePackageResourceZypperResponse zypper;

  /// Creates a new [OSPolicyResourcePackageResourceResponse].
  /// [apt] A package managed by Apt.
  /// [deb] A deb package file.
  /// [desiredState] The desired state the agent should maintain for this package.
  /// [googet] A package managed by GooGet.
  /// [msi] An MSI package.
  /// [rpm] An rpm package file.
  /// [yum] A package managed by YUM.
  /// [zypper] A package managed by Zypper.
  OSPolicyResourcePackageResourceResponse({
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
    return <String, dynamic>{
      'apt': apt.toMap(),
      'deb': deb.toMap(),
      'desiredState': desiredState,
      'googet': googet.toMap(),
      'msi': msi.toMap(),
      'rpm': rpm.toMap(),
      'yum': yum.toMap(),
      'zypper': zypper.toMap(),
    };
  }

  factory OSPolicyResourcePackageResourceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return OSPolicyResourcePackageResourceResponse(
      apt: OSPolicyResourcePackageResourceAPTResponse.fromMap(
        (map['apt'] as Map).cast<String, dynamic>(),
      ),
      deb: OSPolicyResourcePackageResourceDebResponse.fromMap(
        (map['deb'] as Map).cast<String, dynamic>(),
      ),
      desiredState: map['desiredState'] as String,
      googet: OSPolicyResourcePackageResourceGooGetResponse.fromMap(
        (map['googet'] as Map).cast<String, dynamic>(),
      ),
      msi: OSPolicyResourcePackageResourceMSIResponse.fromMap(
        (map['msi'] as Map).cast<String, dynamic>(),
      ),
      rpm: OSPolicyResourcePackageResourceRPMResponse.fromMap(
        (map['rpm'] as Map).cast<String, dynamic>(),
      ),
      yum: OSPolicyResourcePackageResourceYUMResponse.fromMap(
        (map['yum'] as Map).cast<String, dynamic>(),
      ),
      zypper: OSPolicyResourcePackageResourceZypperResponse.fromMap(
        (map['zypper'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
