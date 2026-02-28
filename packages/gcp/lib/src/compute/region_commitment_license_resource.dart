// ignore_for_file: unused_element, unnecessary_cast

class RegionCommitmentLicenseResource {
  /// The number of licenses purchased.
  final String? amount;

  /// Specifies the core range of the instance for which this license applies.
  final String? coresPerLicense;

  /// Any applicable license URI.
  final String license;

  /// Creates a new [RegionCommitmentLicenseResource].
  /// [amount] The number of licenses purchased.
  /// [coresPerLicense] Specifies the core range of the instance for which this license applies.
  /// [license] Any applicable license URI.
  RegionCommitmentLicenseResource({
    this.amount,
    this.coresPerLicense,
    required this.license,
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
    map['license'] = license;
    return map;
  }

  factory RegionCommitmentLicenseResource.fromMap(Map<String, dynamic> map) {
    return RegionCommitmentLicenseResource(
      amount: map['amount'] == null ? null : map['amount'] as String,
      coresPerLicense: map['coresPerLicense'] == null
          ? null
          : map['coresPerLicense'] as String,
      license: map['license'] as String,
    );
  }
}
