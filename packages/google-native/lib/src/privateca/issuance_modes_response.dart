// ignore_for_file: unused_element, unnecessary_cast

/// IssuanceModes specifies the allowed ways in which Certificates may be requested from this CaPool.
class IssuanceModesResponse {
  /// Optional. When true, allows callers to create Certificates by specifying a CertificateConfig.
  final bool allowConfigBasedIssuance;

  /// Optional. When true, allows callers to create Certificates by specifying a CSR.
  final bool allowCsrBasedIssuance;

  /// Creates a new [IssuanceModesResponse].
  /// [allowConfigBasedIssuance] Optional. When true, allows callers to create Certificates by specifying a CertificateConfig.
  /// [allowCsrBasedIssuance] Optional. When true, allows callers to create Certificates by specifying a CSR.
  IssuanceModesResponse({
    required this.allowConfigBasedIssuance,
    required this.allowCsrBasedIssuance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowConfigBasedIssuance'] = allowConfigBasedIssuance;
    map['allowCsrBasedIssuance'] = allowCsrBasedIssuance;
    return map;
  }

  factory IssuanceModesResponse.fromMap(Map<String, dynamic> map) {
    return IssuanceModesResponse(
      allowConfigBasedIssuance: map['allowConfigBasedIssuance'] as bool,
      allowCsrBasedIssuance: map['allowCsrBasedIssuance'] as bool,
    );
  }
}
