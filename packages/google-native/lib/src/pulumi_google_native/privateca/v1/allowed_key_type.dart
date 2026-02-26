// ignore_for_file: unused_element, unnecessary_cast

import 'ec_key_type.dart';
import 'rsa_key_type.dart';

/// Describes a "type" of key that may be used in a Certificate issued from a CaPool. Note that a single AllowedKeyType may refer to either a fully-qualified key algorithm, such as RSA 4096, or a family of key algorithms, such as any RSA key.
class AllowedKeyType {
  /// Represents an allowed Elliptic Curve key type.
  final EcKeyType? ellipticCurve;

  /// Represents an allowed RSA key type.
  final RsaKeyType? rsa;

  AllowedKeyType({
    this.ellipticCurve,
    this.rsa,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ellipticCurveValue = ellipticCurve;
    if (ellipticCurveValue != null) {
      map['ellipticCurve'] = ellipticCurveValue.toMap();
    }
    final rsaValue = rsa;
    if (rsaValue != null) {
      map['rsa'] = rsaValue.toMap();
    }
    return map;
  }

  factory AllowedKeyType.fromMap(Map<String, dynamic> map) {
    return AllowedKeyType(
      ellipticCurve: map['ellipticCurve'] == null
          ? null
          : EcKeyType.fromMap(
              (map['ellipticCurve'] as Map).cast<String, dynamic>()),
      rsa: map['rsa'] == null
          ? null
          : RsaKeyType.fromMap((map['rsa'] as Map).cast<String, dynamic>()),
    );
  }
}
