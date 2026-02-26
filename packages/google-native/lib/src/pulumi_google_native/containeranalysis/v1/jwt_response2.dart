// ignore_for_file: unused_element, unnecessary_cast

class JwtResponse2 {
  /// The compact encoding of a JWS, which is always three base64 encoded strings joined by periods. For details, see: https://tools.ietf.org/html/rfc7515.html#section-3.1
  final String compactJwt;

  JwtResponse2({
    required this.compactJwt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['compactJwt'] = compactJwt;
    return map;
  }

  factory JwtResponse2.fromMap(Map<String, dynamic> map) {
    return JwtResponse2(
      compactJwt: map['compactJwt'] as String,
    );
  }
}
