// ignore_for_file: unused_element, unnecessary_cast

import 'jwt.dart';

/// [Deprecated] Configuration for the origin authentication method. Configuration for the origin authentication method.
class OriginAuthenticationMethod {
  final Jwt? jwt;

  OriginAuthenticationMethod({
    this.jwt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final jwtValue = jwt;
    if (jwtValue != null) {
      map['jwt'] = jwtValue.toMap();
    }
    return map;
  }

  factory OriginAuthenticationMethod.fromMap(Map<String, dynamic> map) {
    return OriginAuthenticationMethod(
      jwt: map['jwt'] == null
          ? null
          : Jwt.fromMap((map['jwt'] as Map).cast<String, dynamic>()),
    );
  }
}
