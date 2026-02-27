// ignore_for_file: unused_element, unnecessary_cast

import 'os_constraint_os_type_accesscontextmanager_v1beta.dart';

/// A restriction on the OS type and version of devices making requests.
class OsConstraintAccesscontextmanagerV1beta {
  /// The minimum allowed OS version. If not set, any version of this OS satisfies the constraint. Format: `"major.minor.patch"`. Examples: `"10.5.301"`, `"9.2.1"`.
  final String? minimumVersion;

  /// The allowed OS type.
  final OsConstraintOsTypeAccesscontextmanagerV1beta osType;

  /// Only allows requests from devices with a verified Chrome OS. Verifications includes requirements that the device is enterprise-managed, conformant to domain policies, and the caller has permission to call the API targeted by the request.
  final bool? requireVerifiedChromeOs;

  OsConstraintAccesscontextmanagerV1beta({
    this.minimumVersion,
    required this.osType,
    this.requireVerifiedChromeOs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final minimumVersionValue = minimumVersion;
    if (minimumVersionValue != null) {
      map['minimumVersion'] = minimumVersionValue;
    }
    map['osType'] = osType.value;
    final requireVerifiedChromeOsValue = requireVerifiedChromeOs;
    if (requireVerifiedChromeOsValue != null) {
      map['requireVerifiedChromeOs'] = requireVerifiedChromeOsValue;
    }
    return map;
  }

  factory OsConstraintAccesscontextmanagerV1beta.fromMap(
      Map<String, dynamic> map) {
    return OsConstraintAccesscontextmanagerV1beta(
      minimumVersion: map['minimumVersion'] == null
          ? null
          : map['minimumVersion'] as String,
      osType: OsConstraintOsTypeAccesscontextmanagerV1beta.fromValue(
          map['osType'] as String),
      requireVerifiedChromeOs: map['requireVerifiedChromeOs'] == null
          ? null
          : map['requireVerifiedChromeOs'] as bool,
    );
  }
}
