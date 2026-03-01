// ignore_for_file: unused_element, unnecessary_cast

import 'ec_key_type.dart';
import 'rsa_key_type.dart';

/// Describes a "type" of key that may be used in a Certificate issued from a CaPool. Note that a single AllowedKeyType may refer to either a fully-qualified key algorithm, such as RSA 4096, or a family of key algorithms, such as any RSA key.
class AllowedKeyType {
  /// Represents an allowed Elliptic Curve key type.
  final EcKeyType? ellipticCurve;

  /// Represents an allowed RSA key type.
  final RsaKeyType? rsa;

  /// Creates a new [AllowedKeyType].
  /// [ellipticCurve] Represents an allowed Elliptic Curve key type.
  /// [rsa] Represents an allowed RSA key type.
  AllowedKeyType({this.ellipticCurve, this.rsa});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ellipticCurve': ?ellipticCurve == null ? null : ellipticCurve!.toMap(),
      'rsa': ?rsa == null ? null : rsa!.toMap(),
    };
  }

  factory AllowedKeyType.fromMap(Map<String, dynamic> map) {
    return AllowedKeyType(
      ellipticCurve: map['ellipticCurve'] == null
          ? null
          : EcKeyType.fromMap(
              (map['ellipticCurve'] as Map).cast<String, dynamic>(),
            ),
      rsa: map['rsa'] == null
          ? null
          : RsaKeyType.fromMap((map['rsa'] as Map).cast<String, dynamic>()),
    );
  }
}
