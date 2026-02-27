// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_repository_resource_apt_repository_response_osconfig_v1alpha.dart';
import 'ospolicy_resource_repository_resource_goo_repository_response_osconfig_v1alpha.dart';
import 'ospolicy_resource_repository_resource_yum_repository_response_osconfig_v1alpha.dart';
import 'ospolicy_resource_repository_resource_zypper_repository_response_osconfig_v1alpha.dart';

/// A resource that manages a package repository.
class OSPolicyResourceRepositoryResourceResponseOsconfigV1alpha {
  /// An Apt Repository.
  final OSPolicyResourceRepositoryResourceAptRepositoryResponseOsconfigV1alpha
      apt;

  /// A Goo Repository.
  final OSPolicyResourceRepositoryResourceGooRepositoryResponseOsconfigV1alpha
      goo;

  /// A Yum Repository.
  final OSPolicyResourceRepositoryResourceYumRepositoryResponseOsconfigV1alpha
      yum;

  /// A Zypper Repository.
  final OSPolicyResourceRepositoryResourceZypperRepositoryResponseOsconfigV1alpha
      zypper;

  OSPolicyResourceRepositoryResourceResponseOsconfigV1alpha({
    required this.apt,
    required this.goo,
    required this.yum,
    required this.zypper,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apt'] = apt.toMap();
    map['goo'] = goo.toMap();
    map['yum'] = yum.toMap();
    map['zypper'] = zypper.toMap();
    return map;
  }

  factory OSPolicyResourceRepositoryResourceResponseOsconfigV1alpha.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourceRepositoryResourceResponseOsconfigV1alpha(
      apt:
          OSPolicyResourceRepositoryResourceAptRepositoryResponseOsconfigV1alpha
              .fromMap((map['apt'] as Map).cast<String, dynamic>()),
      goo:
          OSPolicyResourceRepositoryResourceGooRepositoryResponseOsconfigV1alpha
              .fromMap((map['goo'] as Map).cast<String, dynamic>()),
      yum:
          OSPolicyResourceRepositoryResourceYumRepositoryResponseOsconfigV1alpha
              .fromMap((map['yum'] as Map).cast<String, dynamic>()),
      zypper:
          OSPolicyResourceRepositoryResourceZypperRepositoryResponseOsconfigV1alpha
              .fromMap((map['zypper'] as Map).cast<String, dynamic>()),
    );
  }
}
