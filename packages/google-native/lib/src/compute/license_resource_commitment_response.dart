// ignore_for_file: unused_element, unnecessary_cast

/// Commitment for a particular license resource.
class LicenseResourceCommitmentResponse {
  /// The number of licenses purchased.
  final String amount;

  /// Specifies the core range of the instance for which this license applies.
  final String coresPerLicense;

  /// Any applicable license URI.
  final String license;

  /// Creates a new [LicenseResourceCommitmentResponse].
  /// [amount] The number of licenses purchased.
  /// [coresPerLicense] Specifies the core range of the instance for which this license applies.
  /// [license] Any applicable license URI.
  LicenseResourceCommitmentResponse({
    required this.amount,
    required this.coresPerLicense,
    required this.license,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'coresPerLicense': coresPerLicense,
      'license': license,
    };
  }

  factory LicenseResourceCommitmentResponse.fromMap(Map<String, dynamic> map) {
    return LicenseResourceCommitmentResponse(
      amount: map['amount'] as String,
      coresPerLicense: map['coresPerLicense'] as String,
      license: map['license'] as String,
    );
  }
}
