// ignore_for_file: unused_element, unnecessary_cast

import '../guest_policies_package_repository_apt/guest_policies_package_repository_apt.dart';
import '../guest_policies_package_repository_goo/guest_policies_package_repository_goo.dart';
import '../guest_policies_package_repository_yum/guest_policies_package_repository_yum.dart';
import '../guest_policies_package_repository_zypper/guest_policies_package_repository_zypper.dart';

class GuestPoliciesPackageRepository {
  /// An Apt Repository.
  /// Structure is documented below.
  final GuestPoliciesPackageRepositoryApt? apt;

  /// A Goo Repository.
  /// Structure is documented below.
  final GuestPoliciesPackageRepositoryGoo? goo;

  /// A Yum Repository.
  /// Structure is documented below.
  final GuestPoliciesPackageRepositoryYum? yum;

  /// A Zypper Repository.
  /// Structure is documented below.
  final GuestPoliciesPackageRepositoryZypper? zypper;

  GuestPoliciesPackageRepository({
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

  factory GuestPoliciesPackageRepository.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesPackageRepository(
      apt: map['apt'] == null
          ? null
          : GuestPoliciesPackageRepositoryApt.fromMap(
              (map['apt'] as Map).cast<String, dynamic>()),
      goo: map['goo'] == null
          ? null
          : GuestPoliciesPackageRepositoryGoo.fromMap(
              (map['goo'] as Map).cast<String, dynamic>()),
      yum: map['yum'] == null
          ? null
          : GuestPoliciesPackageRepositoryYum.fromMap(
              (map['yum'] as Map).cast<String, dynamic>()),
      zypper: map['zypper'] == null
          ? null
          : GuestPoliciesPackageRepositoryZypper.fromMap(
              (map['zypper'] as Map).cast<String, dynamic>()),
    );
  }
}
