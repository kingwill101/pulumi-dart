// ignore_for_file: unused_element, unnecessary_cast

/// AppliedLicense holds the license data returned by adaptation module report.
class AppliedLicenseResponse {
  /// The OS license returned from the adaptation module's report.
  final String osLicense;

  /// The license type that was used in OS adaptation.
  final String type;

  /// Creates a new [AppliedLicenseResponse].
  /// [osLicense] The OS license returned from the adaptation module's report.
  /// [type] The license type that was used in OS adaptation.
  AppliedLicenseResponse({
    required this.osLicense,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['osLicense'] = osLicense;
    map['type'] = type;
    return map;
  }

  factory AppliedLicenseResponse.fromMap(Map<String, dynamic> map) {
    return AppliedLicenseResponse(
      osLicense: map['osLicense'] as String,
      type: map['type'] as String,
    );
  }
}
