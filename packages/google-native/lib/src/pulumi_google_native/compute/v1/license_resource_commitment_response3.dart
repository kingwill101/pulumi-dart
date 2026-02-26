// ignore_for_file: unused_element, unnecessary_cast

/// Commitment for a particular license resource.
class LicenseResourceCommitmentResponse3 {
  /// The number of licenses purchased.
  final String amount;

  /// Specifies the core range of the instance for which this license applies.
  final String coresPerLicense;

  /// Any applicable license URI.
  final String license;

  LicenseResourceCommitmentResponse3({
    required this.amount,
    required this.coresPerLicense,
    required this.license,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['amount'] = amount;
    map['coresPerLicense'] = coresPerLicense;
    map['license'] = license;
    return map;
  }

  factory LicenseResourceCommitmentResponse3.fromMap(Map<String, dynamic> map) {
    return LicenseResourceCommitmentResponse3(
      amount: map['amount'] as String,
      coresPerLicense: map['coresPerLicense'] as String,
      license: map['license'] as String,
    );
  }
}
