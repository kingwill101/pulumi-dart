// ignore_for_file: unused_element, unnecessary_cast

/// Commitment for a particular license resource.
class LicenseResourceCommitmentResponseComputeV1 {
  /// The number of licenses purchased.
  final String amount;

  /// Specifies the core range of the instance for which this license applies.
  final String coresPerLicense;

  /// Any applicable license URI.
  final String license;

  /// Creates a new [LicenseResourceCommitmentResponseComputeV1].
  /// [amount] The number of licenses purchased.
  /// [coresPerLicense] Specifies the core range of the instance for which this license applies.
  /// [license] Any applicable license URI.
  LicenseResourceCommitmentResponseComputeV1({
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

  factory LicenseResourceCommitmentResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return LicenseResourceCommitmentResponseComputeV1(
      amount: map['amount'] as String,
      coresPerLicense: map['coresPerLicense'] as String,
      license: map['license'] as String,
    );
  }
}
