// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_repository_resource_apt_repository_response2.dart';
import 'ospolicy_resource_repository_resource_goo_repository_response2.dart';
import 'ospolicy_resource_repository_resource_yum_repository_response2.dart';
import 'ospolicy_resource_repository_resource_zypper_repository_response2.dart';

/// A resource that manages a package repository.
class OSPolicyResourceRepositoryResourceResponse2 {
  /// An Apt Repository.
  final OSPolicyResourceRepositoryResourceAptRepositoryResponse2 apt;

  /// A Goo Repository.
  final OSPolicyResourceRepositoryResourceGooRepositoryResponse2 goo;

  /// A Yum Repository.
  final OSPolicyResourceRepositoryResourceYumRepositoryResponse2 yum;

  /// A Zypper Repository.
  final OSPolicyResourceRepositoryResourceZypperRepositoryResponse2 zypper;

  OSPolicyResourceRepositoryResourceResponse2({
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

  factory OSPolicyResourceRepositoryResourceResponse2.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourceRepositoryResourceResponse2(
      apt: OSPolicyResourceRepositoryResourceAptRepositoryResponse2.fromMap(
          (map['apt'] as Map).cast<String, dynamic>()),
      goo: OSPolicyResourceRepositoryResourceGooRepositoryResponse2.fromMap(
          (map['goo'] as Map).cast<String, dynamic>()),
      yum: OSPolicyResourceRepositoryResourceYumRepositoryResponse2.fromMap(
          (map['yum'] as Map).cast<String, dynamic>()),
      zypper:
          OSPolicyResourceRepositoryResourceZypperRepositoryResponse2.fromMap(
              (map['zypper'] as Map).cast<String, dynamic>()),
    );
  }
}
