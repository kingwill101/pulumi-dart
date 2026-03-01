// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_repository_resource_apt_repository_osconfig_v1alpha.dart';
import 'ospolicy_resource_repository_resource_goo_repository_osconfig_v1alpha.dart';
import 'ospolicy_resource_repository_resource_yum_repository_osconfig_v1alpha.dart';
import 'ospolicy_resource_repository_resource_zypper_repository_osconfig_v1alpha.dart';

/// A resource that manages a package repository.
class OSPolicyResourceRepositoryResourceOsconfigV1alpha {
  /// An Apt Repository.
  final OSPolicyResourceRepositoryResourceAptRepositoryOsconfigV1alpha? apt;

  /// A Goo Repository.
  final OSPolicyResourceRepositoryResourceGooRepositoryOsconfigV1alpha? goo;

  /// A Yum Repository.
  final OSPolicyResourceRepositoryResourceYumRepositoryOsconfigV1alpha? yum;

  /// A Zypper Repository.
  final OSPolicyResourceRepositoryResourceZypperRepositoryOsconfigV1alpha?
  zypper;

  /// Creates a new [OSPolicyResourceRepositoryResourceOsconfigV1alpha].
  /// [apt] An Apt Repository.
  /// [goo] A Goo Repository.
  /// [yum] A Yum Repository.
  /// [zypper] A Zypper Repository.
  OSPolicyResourceRepositoryResourceOsconfigV1alpha({
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

  factory OSPolicyResourceRepositoryResourceOsconfigV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return OSPolicyResourceRepositoryResourceOsconfigV1alpha(
      apt: map['apt'] == null
          ? null
          : OSPolicyResourceRepositoryResourceAptRepositoryOsconfigV1alpha.fromMap(
              (map['apt'] as Map).cast<String, dynamic>(),
            ),
      goo: map['goo'] == null
          ? null
          : OSPolicyResourceRepositoryResourceGooRepositoryOsconfigV1alpha.fromMap(
              (map['goo'] as Map).cast<String, dynamic>(),
            ),
      yum: map['yum'] == null
          ? null
          : OSPolicyResourceRepositoryResourceYumRepositoryOsconfigV1alpha.fromMap(
              (map['yum'] as Map).cast<String, dynamic>(),
            ),
      zypper: map['zypper'] == null
          ? null
          : OSPolicyResourceRepositoryResourceZypperRepositoryOsconfigV1alpha.fromMap(
              (map['zypper'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
