// ignore_for_file: unused_element, unnecessary_cast

import 'apt_repository_response_osconfig_v1beta.dart';
import 'goo_repository_response.dart';
import 'yum_repository_response_osconfig_v1beta.dart';
import 'zypper_repository_response.dart';

/// A package repository.
class PackageRepositoryResponse {
  /// An Apt Repository.
  final AptRepositoryResponseOsconfigV1beta apt;

  /// A Goo Repository.
  final GooRepositoryResponse goo;

  /// A Yum Repository.
  final YumRepositoryResponseOsconfigV1beta yum;

  /// A Zypper Repository.
  final ZypperRepositoryResponse zypper;

  PackageRepositoryResponse({
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

  factory PackageRepositoryResponse.fromMap(Map<String, dynamic> map) {
    return PackageRepositoryResponse(
      apt: AptRepositoryResponseOsconfigV1beta.fromMap(
          (map['apt'] as Map).cast<String, dynamic>()),
      goo: GooRepositoryResponse.fromMap(
          (map['goo'] as Map).cast<String, dynamic>()),
      yum: YumRepositoryResponseOsconfigV1beta.fromMap(
          (map['yum'] as Map).cast<String, dynamic>()),
      zypper: ZypperRepositoryResponse.fromMap(
          (map['zypper'] as Map).cast<String, dynamic>()),
    );
  }
}
