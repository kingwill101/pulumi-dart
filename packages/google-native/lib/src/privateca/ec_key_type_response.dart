// ignore_for_file: unused_element, unnecessary_cast

/// Describes an Elliptic Curve key that may be used in a Certificate issued from a CaPool.
class EcKeyTypeResponse {
  /// Optional. A signature algorithm that must be used. If this is omitted, any EC-based signature algorithm will be allowed.
  final String signatureAlgorithm;

  /// Creates a new [EcKeyTypeResponse].
  /// [signatureAlgorithm] Optional. A signature algorithm that must be used. If this is omitted, any EC-based signature algorithm will be allowed.
  EcKeyTypeResponse({
    required this.signatureAlgorithm,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['signatureAlgorithm'] = signatureAlgorithm;
    return map;
  }

  factory EcKeyTypeResponse.fromMap(Map<String, dynamic> map) {
    return EcKeyTypeResponse(
      signatureAlgorithm: map['signatureAlgorithm'] as String,
    );
  }
}
