// ignore_for_file: unused_element, unnecessary_cast

class CaPoolIssuancePolicyAllowedIssuanceModes {
  /// When true, allows callers to create Certificates by specifying a CertificateConfig.
  final bool allowConfigBasedIssuance;

  /// When true, allows callers to create Certificates by specifying a CSR.
  final bool allowCsrBasedIssuance;

  /// Creates a new [CaPoolIssuancePolicyAllowedIssuanceModes].
  /// [allowConfigBasedIssuance] When true, allows callers to create Certificates by specifying a CertificateConfig.
  /// [allowCsrBasedIssuance] When true, allows callers to create Certificates by specifying a CSR.
  CaPoolIssuancePolicyAllowedIssuanceModes({
    required this.allowConfigBasedIssuance,
    required this.allowCsrBasedIssuance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowConfigBasedIssuance'] = allowConfigBasedIssuance;
    map['allowCsrBasedIssuance'] = allowCsrBasedIssuance;
    return map;
  }

  factory CaPoolIssuancePolicyAllowedIssuanceModes.fromMap(
      Map<String, dynamic> map) {
    return CaPoolIssuancePolicyAllowedIssuanceModes(
      allowConfigBasedIssuance: map['allowConfigBasedIssuance'] as bool,
      allowCsrBasedIssuance: map['allowCsrBasedIssuance'] as bool,
    );
  }
}
