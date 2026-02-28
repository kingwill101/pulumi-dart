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
    final map = <String, dynamic>{};
    final aptValue = apt;
    if (aptValue != null) {
      map['apt'] = aptValue.toMap();
    }
    final gooValue = goo;
    if (gooValue != null) {
      map['goo'] = gooValue.toMap();
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

  factory OSPolicyResourceRepositoryResource.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceRepositoryResource(
      apt: map['apt'] == null
          ? null
          : OSPolicyResourceRepositoryResourceAptRepository.fromMap(
              (map['apt'] as Map).cast<String, dynamic>()),
      goo: map['goo'] == null
          ? null
          : OSPolicyResourceRepositoryResourceGooRepository.fromMap(
              (map['goo'] as Map).cast<String, dynamic>()),
      yum: map['yum'] == null
          ? null
          : OSPolicyResourceRepositoryResourceYumRepository.fromMap(
              (map['yum'] as Map).cast<String, dynamic>()),
      zypper: map['zypper'] == null
          ? null
          : OSPolicyResourceRepositoryResourceZypperRepository.fromMap(
              (map['zypper'] as Map).cast<String, dynamic>()),
    );
  }
}
