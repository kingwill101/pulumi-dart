// ignore_for_file: unused_element, unnecessary_cast

class CaPoolIssuancePolicyAllowedKeyTypeEllipticCurve {
  /// The algorithm used.
  /// Possible values are: `ECDSA_P256`, `ECDSA_P384`, `EDDSA_25519`.
  final String signatureAlgorithm;

  CaPoolIssuancePolicyAllowedKeyTypeEllipticCurve({
    required this.signatureAlgorithm,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['signatureAlgorithm'] = signatureAlgorithm;
    return map;
  }

  factory CaPoolIssuancePolicyAllowedKeyTypeEllipticCurve.fromMap(
      Map<String, dynamic> map) {
    return CaPoolIssuancePolicyAllowedKeyTypeEllipticCurve(
      signatureAlgorithm: map['signatureAlgorithm'] as String,
    );
  }
}
