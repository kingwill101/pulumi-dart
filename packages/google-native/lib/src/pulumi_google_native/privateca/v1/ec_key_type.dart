// ignore_for_file: unused_element, unnecessary_cast

import 'ec_key_type_signature_algorithm.dart';

/// Describes an Elliptic Curve key that may be used in a Certificate issued from a CaPool.
class EcKeyType {
  /// Optional. A signature algorithm that must be used. If this is omitted, any EC-based signature algorithm will be allowed.
  final EcKeyTypeSignatureAlgorithm? signatureAlgorithm;

  EcKeyType({
    this.signatureAlgorithm,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final signatureAlgorithmValue = signatureAlgorithm;
    if (signatureAlgorithmValue != null) {
      map['signatureAlgorithm'] = signatureAlgorithmValue.value;
    }
    return map;
  }

  factory EcKeyType.fromMap(Map<String, dynamic> map) {
    return EcKeyType(
      signatureAlgorithm: map['signatureAlgorithm'] == null
          ? null
          : EcKeyTypeSignatureAlgorithm.fromValue(
              map['signatureAlgorithm'] as String),
    );
  }
}
