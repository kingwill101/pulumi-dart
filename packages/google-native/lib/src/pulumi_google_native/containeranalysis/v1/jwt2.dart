// ignore_for_file: unused_element, unnecessary_cast

class Jwt2 {
  /// The compact encoding of a JWS, which is always three base64 encoded strings joined by periods. For details, see: https://tools.ietf.org/html/rfc7515.html#section-3.1
  final String? compactJwt;

  Jwt2({
    this.compactJwt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final compactJwtValue = compactJwt;
    if (compactJwtValue != null) {
      map['compactJwt'] = compactJwtValue;
    }
    return map;
  }

  factory Jwt2.fromMap(Map<String, dynamic> map) {
    return Jwt2(
      compactJwt:
          map['compactJwt'] == null ? null : map['compactJwt'] as String,
    );
  }
}
