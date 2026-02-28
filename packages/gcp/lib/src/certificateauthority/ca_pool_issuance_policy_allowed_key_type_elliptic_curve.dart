// ignore_for_file: unused_element, unnecessary_cast


class CaPoolIssuancePolicyAllowedKeyTypeEllipticCurve {
  /// The algorithm used.
  /// Possible values are: `ECDSA_P256`, `ECDSA_P384`, `EDDSA_25519`.
  final String signatureAlgorithm;

  /// Creates a new [CaPoolIssuancePolicyAllowedKeyTypeEllipticCurve].
  /// [signatureAlgorithm] The algorithm used.
  CaPoolIssuancePolicyAllowedKeyTypeEllipticCurve({
    required this.signatureAlgorithm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'signatureAlgorithm': signatureAlgorithm,
    };
  }

  factory CaPoolIssuancePolicyAllowedKeyTypeEllipticCurve.fromMap(Map<String, dynamic> map) {
    return CaPoolIssuancePolicyAllowedKeyTypeEllipticCurve(
      signatureAlgorithm: map['signatureAlgorithm'] as String,
    );
  }
}

