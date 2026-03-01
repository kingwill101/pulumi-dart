// ignore_for_file: unused_element, unnecessary_cast

import 'apt_repository_response.dart';
import 'goo_repository_response.dart';
import 'yum_repository_response.dart';
import 'zypper_repository_response.dart';

/// A package repository.
class PackageRepositoryResponse {
  /// An Apt Repository.
  final AptRepositoryResponse apt;

  /// A Goo Repository.
  final GooRepositoryResponse goo;

  /// A Yum Repository.
  final YumRepositoryResponse yum;

  /// A Zypper Repository.
  final ZypperRepositoryResponse zypper;

  /// Creates a new [PackageRepositoryResponse].
  /// [apt] An Apt Repository.
  /// [goo] A Goo Repository.
  /// [yum] A Yum Repository.
  /// [zypper] A Zypper Repository.
  PackageRepositoryResponse({
    required this.apt,
    required this.goo,
    required this.yum,
    required this.zypper,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apt': apt.toMap(),
      'goo': goo.toMap(),
      'yum': yum.toMap(),
      'zypper': zypper.toMap(),
    };
  }

  factory PackageRepositoryResponse.fromMap(Map<String, dynamic> map) {
    return PackageRepositoryResponse(
      apt: AptRepositoryResponse.fromMap(
        (map['apt'] as Map).cast<String, dynamic>(),
      ),
      goo: GooRepositoryResponse.fromMap(
        (map['goo'] as Map).cast<String, dynamic>(),
      ),
      yum: YumRepositoryResponse.fromMap(
        (map['yum'] as Map).cast<String, dynamic>(),
      ),
      zypper: ZypperRepositoryResponse.fromMap(
        (map['zypper'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
