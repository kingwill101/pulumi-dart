// ignore_for_file: unused_element, unnecessary_cast

import 'ec_key_type_response.dart';
import 'rsa_key_type_response.dart';

/// Describes a "type" of key that may be used in a Certificate issued from a CaPool. Note that a single AllowedKeyType may refer to either a fully-qualified key algorithm, such as RSA 4096, or a family of key algorithms, such as any RSA key.
class AllowedKeyTypeResponse {
  /// Represents an allowed Elliptic Curve key type.
  final EcKeyTypeResponse ellipticCurve;

  /// Represents an allowed RSA key type.
  final RsaKeyTypeResponse rsa;

  AllowedKeyTypeResponse({
    required this.ellipticCurve,
    required this.rsa,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ellipticCurve'] = ellipticCurve.toMap();
    map['rsa'] = rsa.toMap();
    return map;
  }

  factory AllowedKeyTypeResponse.fromMap(Map<String, dynamic> map) {
    return AllowedKeyTypeResponse(
      ellipticCurve: EcKeyTypeResponse.fromMap(
          (map['ellipticCurve'] as Map).cast<String, dynamic>()),
      rsa: RsaKeyTypeResponse.fromMap(
          (map['rsa'] as Map).cast<String, dynamic>()),
    );
  }
}
