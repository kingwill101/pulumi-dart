// ignore_for_file: unused_element, unnecessary_cast


class Jwt {
  /// The compact encoding of a JWS, which is always three base64 encoded strings joined by periods. For details, see: https://tools.ietf.org/html/rfc7515.html#section-3.1
  final String? compactJwt;

  /// Creates a new [Jwt].
  /// [compactJwt] The compact encoding of a JWS, which is always three base64 encoded strings joined by periods. For details, see: https://tools.ietf.org/html/rfc7515.html#section-3.1
  Jwt({
    this.compactJwt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compactJwt': ?compactJwt,
    };
  }

  factory Jwt.fromMap(Map<String, dynamic> map) {
    return Jwt(
      compactJwt: map['compactJwt'] == null ? null : map['compactJwt'] as String,
    );
  }
}

