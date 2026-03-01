// ignore_for_file: unused_element, unnecessary_cast

import 'jwt_response.dart';

/// [Deprecated] Configuration for the origin authentication method. Configuration for the origin authentication method.
class OriginAuthenticationMethodResponse {
  final JwtResponse jwt;

  /// Creates a new [OriginAuthenticationMethodResponse].
  /// [jwt] Required.
  OriginAuthenticationMethodResponse({required this.jwt});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'jwt': jwt.toMap()};
  }

  factory OriginAuthenticationMethodResponse.fromMap(Map<String, dynamic> map) {
    return OriginAuthenticationMethodResponse(
      jwt: JwtResponse.fromMap((map['jwt'] as Map).cast<String, dynamic>()),
    );
  }
}
