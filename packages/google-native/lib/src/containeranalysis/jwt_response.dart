// ignore_for_file: unused_element, unnecessary_cast

class JwtResponse {
  /// The compact encoding of a JWS, which is always three base64 encoded strings joined by periods. For details, see: https://tools.ietf.org/html/rfc7515.html#section-3.1
  final String compactJwt;

  /// Creates a new [JwtResponse].
  /// [compactJwt] The compact encoding of a JWS, which is always three base64 encoded strings joined by periods. For details, see: https://tools.ietf.org/html/rfc7515.html#section-3.1
  JwtResponse({
    required this.compactJwt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['compactJwt'] = compactJwt;
    return map;
  }

  factory JwtResponse.fromMap(Map<String, dynamic> map) {
    return JwtResponse(
      compactJwt: map['compactJwt'] as String,
    );
  }
}
