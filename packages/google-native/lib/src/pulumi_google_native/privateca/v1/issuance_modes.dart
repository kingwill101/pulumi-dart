// ignore_for_file: unused_element, unnecessary_cast

/// IssuanceModes specifies the allowed ways in which Certificates may be requested from this CaPool.
class IssuanceModes {
  /// Optional. When true, allows callers to create Certificates by specifying a CertificateConfig.
  final bool? allowConfigBasedIssuance;

  /// Optional. When true, allows callers to create Certificates by specifying a CSR.
  final bool? allowCsrBasedIssuance;

  IssuanceModes({
    this.allowConfigBasedIssuance,
    this.allowCsrBasedIssuance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowConfigBasedIssuanceValue = allowConfigBasedIssuance;
    if (allowConfigBasedIssuanceValue != null) {
      map['allowConfigBasedIssuance'] = allowConfigBasedIssuanceValue;
    }
    final allowCsrBasedIssuanceValue = allowCsrBasedIssuance;
    if (allowCsrBasedIssuanceValue != null) {
      map['allowCsrBasedIssuance'] = allowCsrBasedIssuanceValue;
    }
    return map;
  }

  factory IssuanceModes.fromMap(Map<String, dynamic> map) {
    return IssuanceModes(
      allowConfigBasedIssuance: map['allowConfigBasedIssuance'] == null
          ? null
          : map['allowConfigBasedIssuance'] as bool,
      allowCsrBasedIssuance: map['allowCsrBasedIssuance'] == null
          ? null
          : map['allowCsrBasedIssuance'] as bool,
    );
  }
}
