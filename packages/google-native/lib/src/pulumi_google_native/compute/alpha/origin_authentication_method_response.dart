// ignore_for_file: unused_element, unnecessary_cast

import 'jwt_response.dart';

/// [Deprecated] Configuration for the origin authentication method. Configuration for the origin authentication method.
class OriginAuthenticationMethodResponse {
  final JwtResponse jwt;

  OriginAuthenticationMethodResponse({
    required this.jwt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jwt'] = jwt.toMap();
    return map;
  }

  factory OriginAuthenticationMethodResponse.fromMap(Map<String, dynamic> map) {
    return OriginAuthenticationMethodResponse(
      jwt: JwtResponse.fromMap((map['jwt'] as Map).cast<String, dynamic>()),
    );
  }
}
