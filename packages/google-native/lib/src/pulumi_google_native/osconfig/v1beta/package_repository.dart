// ignore_for_file: unused_element, unnecessary_cast

import 'apt_repository_osconfig_v1beta.dart';
import 'goo_repository.dart';
import 'yum_repository_osconfig_v1beta.dart';
import 'zypper_repository.dart';

/// A package repository.
class PackageRepository {
  /// An Apt Repository.
  final AptRepositoryOsconfigV1beta? apt;

  /// A Goo Repository.
  final GooRepository? goo;

  /// A Yum Repository.
  final YumRepositoryOsconfigV1beta? yum;

  /// A Zypper Repository.
  final ZypperRepository? zypper;

  PackageRepository({
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

  factory PackageRepository.fromMap(Map<String, dynamic> map) {
    return PackageRepository(
      apt: map['apt'] == null
          ? null
          : AptRepositoryOsconfigV1beta.fromMap(
              (map['apt'] as Map).cast<String, dynamic>()),
      goo: map['goo'] == null
          ? null
          : GooRepository.fromMap((map['goo'] as Map).cast<String, dynamic>()),
      yum: map['yum'] == null
          ? null
          : YumRepositoryOsconfigV1beta.fromMap(
              (map['yum'] as Map).cast<String, dynamic>()),
      zypper: map['zypper'] == null
          ? null
          : ZypperRepository.fromMap(
              (map['zypper'] as Map).cast<String, dynamic>()),
    );
  }
}
