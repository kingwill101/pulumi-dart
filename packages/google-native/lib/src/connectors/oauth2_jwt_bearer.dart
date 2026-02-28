// ignore_for_file: unused_element, unnecessary_cast

import 'jwt_claims.dart';
import 'secret.dart';

/// Parameters to support JSON Web Token (JWT) Profile for Oauth 2.0 Authorization Grant based authentication. See https://tools.ietf.org/html/rfc7523 for more details.
class Oauth2JwtBearer {
  /// Secret version reference containing a PKCS#8 PEM-encoded private key associated with the Client Certificate. This private key will be used to sign JWTs used for the jwt-bearer authorization grant. Specified in the form as: `projects/*/secrets/*/versions/*`.
  final Secret? clientKey;

  /// JwtClaims providers fields to generate the token.
  final JwtClaims? jwtClaims;

  /// Creates a new [Oauth2JwtBearer].
  /// [clientKey] Secret version reference containing a PKCS#8 PEM-encoded private key associated with the Client Certificate. This private key will be used to sign JWTs used for the jwt-bearer authorization grant. Specified in the form as: `projects/*/secrets/*/versions/*`.
  /// [jwtClaims] JwtClaims providers fields to generate the token.
  Oauth2JwtBearer({
    this.clientKey,
    this.jwtClaims,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientKeyValue = clientKey;
    if (clientKeyValue != null) {
      map['clientKey'] = clientKeyValue.toMap();
    }
    final jwtClaimsValue = jwtClaims;
    if (jwtClaimsValue != null) {
      map['jwtClaims'] = jwtClaimsValue.toMap();
    }
    return map;
  }

  factory Oauth2JwtBearer.fromMap(Map<String, dynamic> map) {
    return Oauth2JwtBearer(
      clientKey: map['clientKey'] == null
          ? null
          : Secret.fromMap((map['clientKey'] as Map).cast<String, dynamic>()),
      jwtClaims: map['jwtClaims'] == null
          ? null
          : JwtClaims.fromMap(
              (map['jwtClaims'] as Map).cast<String, dynamic>()),
    );
  }
}
