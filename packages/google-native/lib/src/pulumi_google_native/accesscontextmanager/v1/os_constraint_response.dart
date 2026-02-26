// ignore_for_file: unused_element, unnecessary_cast

/// A restriction on the OS type and version of devices making requests.
class OsConstraintResponse {
  /// The minimum allowed OS version. If not set, any version of this OS satisfies the constraint. Format: `"major.minor.patch"`. Examples: `"10.5.301"`, `"9.2.1"`.
  final String minimumVersion;

  /// The allowed OS type.
  final String osType;

  /// Only allows requests from devices with a verified Chrome OS. Verifications includes requirements that the device is enterprise-managed, conformant to domain policies, and the caller has permission to call the API targeted by the request.
  final bool requireVerifiedChromeOs;

  OsConstraintResponse({
    required this.minimumVersion,
    required this.osType,
    required this.requireVerifiedChromeOs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['minimumVersion'] = minimumVersion;
    map['osType'] = osType;
    map['requireVerifiedChromeOs'] = requireVerifiedChromeOs;
    return map;
  }

  factory OsConstraintResponse.fromMap(Map<String, dynamic> map) {
    return OsConstraintResponse(
      minimumVersion: map['minimumVersion'] as String,
      osType: map['osType'] as String,
      requireVerifiedChromeOs: map['requireVerifiedChromeOs'] as bool,
    );
  }
}
