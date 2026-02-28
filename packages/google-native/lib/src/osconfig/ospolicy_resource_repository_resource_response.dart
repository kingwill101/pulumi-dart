// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_repository_resource_apt_repository_response.dart';
import 'ospolicy_resource_repository_resource_goo_repository_response.dart';
import 'ospolicy_resource_repository_resource_yum_repository_response.dart';
import 'ospolicy_resource_repository_resource_zypper_repository_response.dart';

/// A resource that manages a package repository.
class OSPolicyResourceRepositoryResourceResponse {
  /// An Apt Repository.
  final OSPolicyResourceRepositoryResourceAptRepositoryResponse apt;

  /// A Goo Repository.
  final OSPolicyResourceRepositoryResourceGooRepositoryResponse goo;

  /// A Yum Repository.
  final OSPolicyResourceRepositoryResourceYumRepositoryResponse yum;

  /// A Zypper Repository.
  final OSPolicyResourceRepositoryResourceZypperRepositoryResponse zypper;

  /// Creates a new [OSPolicyResourceRepositoryResourceResponse].
  /// [apt] An Apt Repository.
  /// [goo] A Goo Repository.
  /// [yum] A Yum Repository.
  /// [zypper] A Zypper Repository.
  OSPolicyResourceRepositoryResourceResponse({
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

  factory OSPolicyResourceRepositoryResourceResponse.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourceRepositoryResourceResponse(
      apt: OSPolicyResourceRepositoryResourceAptRepositoryResponse.fromMap(
          (map['apt'] as Map).cast<String, dynamic>()),
      goo: OSPolicyResourceRepositoryResourceGooRepositoryResponse.fromMap(
          (map['goo'] as Map).cast<String, dynamic>()),
      yum: OSPolicyResourceRepositoryResourceYumRepositoryResponse.fromMap(
          (map['yum'] as Map).cast<String, dynamic>()),
      zypper:
          OSPolicyResourceRepositoryResourceZypperRepositoryResponse.fromMap(
              (map['zypper'] as Map).cast<String, dynamic>()),
    );
  }
}
