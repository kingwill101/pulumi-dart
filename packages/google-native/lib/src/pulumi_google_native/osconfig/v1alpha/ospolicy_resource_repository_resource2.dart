// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_repository_resource_apt_repository2.dart';
import 'ospolicy_resource_repository_resource_goo_repository2.dart';
import 'ospolicy_resource_repository_resource_yum_repository2.dart';
import 'ospolicy_resource_repository_resource_zypper_repository2.dart';

/// A resource that manages a package repository.
class OSPolicyResourceRepositoryResource2 {
  /// An Apt Repository.
  final OSPolicyResourceRepositoryResourceAptRepository2? apt;

  /// A Goo Repository.
  final OSPolicyResourceRepositoryResourceGooRepository2? goo;

  /// A Yum Repository.
  final OSPolicyResourceRepositoryResourceYumRepository2? yum;

  /// A Zypper Repository.
  final OSPolicyResourceRepositoryResourceZypperRepository2? zypper;

  OSPolicyResourceRepositoryResource2({
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

  factory OSPolicyResourceRepositoryResource2.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourceRepositoryResource2(
      apt: map['apt'] == null
          ? null
          : OSPolicyResourceRepositoryResourceAptRepository2.fromMap(
              (map['apt'] as Map).cast<String, dynamic>()),
      goo: map['goo'] == null
          ? null
          : OSPolicyResourceRepositoryResourceGooRepository2.fromMap(
              (map['goo'] as Map).cast<String, dynamic>()),
      yum: map['yum'] == null
          ? null
          : OSPolicyResourceRepositoryResourceYumRepository2.fromMap(
              (map['yum'] as Map).cast<String, dynamic>()),
      zypper: map['zypper'] == null
          ? null
          : OSPolicyResourceRepositoryResourceZypperRepository2.fromMap(
              (map['zypper'] as Map).cast<String, dynamic>()),
    );
  }
}
