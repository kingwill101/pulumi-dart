// ignore_for_file: unused_element, unnecessary_cast

import 'jwt_claims_response.dart';
import 'secret_response.dart';

/// Parameters to support JSON Web Token (JWT) Profile for Oauth 2.0 Authorization Grant based authentication. See https://tools.ietf.org/html/rfc7523 for more details.
class Oauth2JwtBearerResponse {
  /// Secret version reference containing a PKCS#8 PEM-encoded private key associated with the Client Certificate. This private key will be used to sign JWTs used for the jwt-bearer authorization grant. Specified in the form as: `projects/*/secrets/*/versions/*`.
  final SecretResponse clientKey;
  /// JwtClaims providers fields to generate the token.
  final JwtClaimsResponse jwtClaims;

  /// Creates a new [Oauth2JwtBearerResponse].
  /// [clientKey] Secret version reference containing a PKCS#8 PEM-encoded private key associated with the Client Certificate. This private key will be used to sign JWTs used for the jwt-bearer authorization grant. Specified in the form as: `projects/*/secrets/*/versions/*`.
  /// [jwtClaims] JwtClaims providers fields to generate the token.
  Oauth2JwtBearerResponse({
    required this.clientKey,
    required this.jwtClaims,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientKey': clientKey.toMap(),
      'jwtClaims': jwtClaims.toMap(),
    };
  }

  factory Oauth2JwtBearerResponse.fromMap(Map<String, dynamic> map) {
    return Oauth2JwtBearerResponse(
      clientKey: SecretResponse.fromMap((map['clientKey'] as Map).cast<String, dynamic>()),
      jwtClaims: JwtClaimsResponse.fromMap((map['jwtClaims'] as Map).cast<String, dynamic>()),
    );
  }
}

