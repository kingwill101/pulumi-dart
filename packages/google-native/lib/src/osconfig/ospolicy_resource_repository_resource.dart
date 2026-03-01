// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_repository_resource_apt_repository.dart';
import 'ospolicy_resource_repository_resource_goo_repository.dart';
import 'ospolicy_resource_repository_resource_yum_repository.dart';
import 'ospolicy_resource_repository_resource_zypper_repository.dart';

/// A resource that manages a package repository.
class OSPolicyResourceRepositoryResource {
  /// An Apt Repository.
  final OSPolicyResourceRepositoryResourceAptRepository? apt;

  /// A Goo Repository.
  final OSPolicyResourceRepositoryResourceGooRepository? goo;

  /// A Yum Repository.
  final OSPolicyResourceRepositoryResourceYumRepository? yum;

  /// A Zypper Repository.
  final OSPolicyResourceRepositoryResourceZypperRepository? zypper;

  /// Creates a new [OSPolicyResourceRepositoryResource].
  /// [apt] An Apt Repository.
  /// [goo] A Goo Repository.
  /// [yum] A Yum Repository.
  /// [zypper] A Zypper Repository.
  OSPolicyResourceRepositoryResource({
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

  factory OSPolicyResourceRepositoryResource.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceRepositoryResource(
      apt: map['apt'] == null
          ? null
          : OSPolicyResourceRepositoryResourceAptRepository.fromMap(
              (map['apt'] as Map).cast<String, dynamic>(),
            ),
      goo: map['goo'] == null
          ? null
          : OSPolicyResourceRepositoryResourceGooRepository.fromMap(
              (map['goo'] as Map).cast<String, dynamic>(),
            ),
      yum: map['yum'] == null
          ? null
          : OSPolicyResourceRepositoryResourceYumRepository.fromMap(
              (map['yum'] as Map).cast<String, dynamic>(),
            ),
      zypper: map['zypper'] == null
          ? null
          : OSPolicyResourceRepositoryResourceZypperRepository.fromMap(
              (map['zypper'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
