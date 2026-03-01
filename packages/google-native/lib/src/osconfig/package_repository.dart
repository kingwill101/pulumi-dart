// ignore_for_file: unused_element, unnecessary_cast

import 'apt_repository.dart';
import 'goo_repository.dart';
import 'yum_repository.dart';
import 'zypper_repository.dart';

/// A package repository.
class PackageRepository {
  /// An Apt Repository.
  final AptRepository? apt;

  /// A Goo Repository.
  final GooRepository? goo;

  /// A Yum Repository.
  final YumRepository? yum;

  /// A Zypper Repository.
  final ZypperRepository? zypper;

  /// Creates a new [PackageRepository].
  /// [apt] An Apt Repository.
  /// [goo] A Goo Repository.
  /// [yum] A Yum Repository.
  /// [zypper] A Zypper Repository.
  PackageRepository({this.apt, this.goo, this.yum, this.zypper});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apt': ?apt == null ? null : apt!.toMap(),
      'goo': ?goo == null ? null : goo!.toMap(),
      'yum': ?yum == null ? null : yum!.toMap(),
      'zypper': ?zypper == null ? null : zypper!.toMap(),
    };
  }

  factory PackageRepository.fromMap(Map<String, dynamic> map) {
    return PackageRepository(
      apt: map['apt'] == null
          ? null
          : AptRepository.fromMap((map['apt'] as Map).cast<String, dynamic>()),
      goo: map['goo'] == null
          ? null
          : GooRepository.fromMap((map['goo'] as Map).cast<String, dynamic>()),
      yum: map['yum'] == null
          ? null
          : YumRepository.fromMap((map['yum'] as Map).cast<String, dynamic>()),
      zypper: map['zypper'] == null
          ? null
          : ZypperRepository.fromMap(
              (map['zypper'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
