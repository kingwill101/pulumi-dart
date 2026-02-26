// ignore_for_file: unused_element, unnecessary_cast

/// AppliedLicense holds the license data returned by adaptation module report.
class AppliedLicenseResponse2 {
  /// The OS license returned from the adaptation module's report.
  final String osLicense;

  /// The license type that was used in OS adaptation.
  final String type;

  AppliedLicenseResponse2({
    required this.osLicense,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['osLicense'] = osLicense;
    map['type'] = type;
    return map;
  }

  factory AppliedLicenseResponse2.fromMap(Map<String, dynamic> map) {
    return AppliedLicenseResponse2(
      osLicense: map['osLicense'] as String,
      type: map['type'] as String,
    );
  }
}
