// ignore_for_file: unused_element, unnecessary_cast

/// Commitment for a particular license resource.
class LicenseResourceCommitment2 {
  /// The number of licenses purchased.
  final String? amount;

  /// Specifies the core range of the instance for which this license applies.
  final String? coresPerLicense;

  /// Any applicable license URI.
  final String? license;

  LicenseResourceCommitment2({
    this.amount,
    this.coresPerLicense,
    this.license,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final amountValue = amount;
    if (amountValue != null) {
      map['amount'] = amountValue;
    }
    final coresPerLicenseValue = coresPerLicense;
    if (coresPerLicenseValue != null) {
      map['coresPerLicense'] = coresPerLicenseValue;
    }
    final licenseValue = license;
    if (licenseValue != null) {
      map['license'] = licenseValue;
    }
    return map;
  }

  factory LicenseResourceCommitment2.fromMap(Map<String, dynamic> map) {
    return LicenseResourceCommitment2(
      amount: map['amount'] == null ? null : map['amount'] as String,
      coresPerLicense: map['coresPerLicense'] == null
          ? null
          : map['coresPerLicense'] as String,
      license: map['license'] == null ? null : map['license'] as String,
    );
  }
}
