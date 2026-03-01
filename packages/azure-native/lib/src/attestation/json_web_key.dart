// ignore_for_file: unused_element, unnecessary_cast


class JsonWebKey {
  /// The "alg" (algorithm) parameter identifies the algorithm intended for
  /// use with the key.  The values used should either be registered in the
  /// IANA "JSON Web Signature and Encryption Algorithms" registry
  /// established by [JWA] or be a value that contains a Collision-
  /// Resistant Name.
  final String? alg;
  /// The "crv" (curve) parameter identifies the curve type
  final String? crv;
  /// RSA private exponent or ECC private key
  final String? d;
  /// RSA Private Key Parameter
  final String? dp;
  /// RSA Private Key Parameter
  final String? dq;
  /// RSA public exponent, in Base64
  final String? e;
  /// Symmetric key
  final String? k;
  /// The "kid" (key ID) parameter is used to match a specific key.  This
  /// is used, for instance, to choose among a set of keys within a JWK Set
  /// during key rollover.  The structure of the "kid" value is
  /// unspecified.  When "kid" values are used within a JWK Set, different
  /// keys within the JWK Set SHOULD use distinct "kid" values.  (One
  /// example in which different keys might use the same "kid" value is if
  /// they have different "kty" (key type) values but are considered to be
  /// equivalent alternatives by the application using them.)  The "kid"
  /// value is a case-sensitive string.
  final String? kid;
  /// The "kty" (key type) parameter identifies the cryptographic algorithm
  /// family used with the key, such as "RSA" or "EC". "kty" values should
  /// either be registered in the IANA "JSON Web Key Types" registry
  /// established by [JWA] or be a value that contains a Collision-
  /// Resistant Name.  The "kty" value is a case-sensitive string.
  final String kty;
  /// RSA modulus, in Base64
  final String? n;
  /// RSA secret prime
  final String? p;
  /// RSA secret prime, with p < q
  final String? q;
  /// RSA Private Key Parameter
  final String? qi;
  /// Use ("public key use") identifies the intended use of
  /// the public key. The "use" parameter is employed to indicate whether
  /// a public key is used for encrypting data or verifying the signature
  /// on data. Values are commonly "sig" (signature) or "enc" (encryption).
  final String? use;
  /// X coordinate for the Elliptic Curve point
  final String? x;
  /// The "x5c" (X.509 certificate chain) parameter contains a chain of one
  /// or more PKIX certificates [RFC5280].  The certificate chain is
  /// represented as a JSON array of certificate value strings.  Each
  /// string in the array is a base64-encoded (Section 4 of [RFC4648] --
  /// not base64url-encoded) DER [ITU.X690.1994] PKIX certificate value.
  /// The PKIX certificate containing the key value MUST be the first
  /// certificate.
  final List<String>? x5C;
  /// Y coordinate for the Elliptic Curve point
  final String? y;

  /// Creates a new [JsonWebKey].
  /// [alg] The "alg" (algorithm) parameter identifies the algorithm intended for
  /// [crv] The "crv" (curve) parameter identifies the curve type
  /// [d] RSA private exponent or ECC private key
  /// [dp] RSA Private Key Parameter
  /// [dq] RSA Private Key Parameter
  /// [e] RSA public exponent, in Base64
  /// [k] Symmetric key
  /// [kid] The "kid" (key ID) parameter is used to match a specific key.  This
  /// [kty] The "kty" (key type) parameter identifies the cryptographic algorithm
  /// [n] RSA modulus, in Base64
  /// [p] RSA secret prime
  /// [q] RSA secret prime, with p < q
  /// [qi] RSA Private Key Parameter
  /// [use] Use ("public key use") identifies the intended use of
  /// [x] X coordinate for the Elliptic Curve point
  /// [x5C] The "x5c" (X.509 certificate chain) parameter contains a chain of one
  /// [y] Y coordinate for the Elliptic Curve point
  JsonWebKey({
    this.alg,
    this.crv,
    this.d,
    this.dp,
    this.dq,
    this.e,
    this.k,
    this.kid,
    required this.kty,
    this.n,
    this.p,
    this.q,
    this.qi,
    this.use,
    this.x,
    this.x5C,
    this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alg': ?alg,
      'crv': ?crv,
      'd': ?d,
      'dp': ?dp,
      'dq': ?dq,
      'e': ?e,
      'k': ?k,
      'kid': ?kid,
      'kty': kty,
      'n': ?n,
      'p': ?p,
      'q': ?q,
      'qi': ?qi,
      'use': ?use,
      'x': ?x,
      'x5C': ?x5C,
      'y': ?y,
    };
  }

  factory JsonWebKey.fromMap(Map<String, dynamic> map) {
    return JsonWebKey(
      alg: map['alg'] == null ? null : map['alg'] as String,
      crv: map['crv'] == null ? null : map['crv'] as String,
      d: map['d'] == null ? null : map['d'] as String,
      dp: map['dp'] == null ? null : map['dp'] as String,
      dq: map['dq'] == null ? null : map['dq'] as String,
      e: map['e'] == null ? null : map['e'] as String,
      k: map['k'] == null ? null : map['k'] as String,
      kid: map['kid'] == null ? null : map['kid'] as String,
      kty: map['kty'] as String,
      n: map['n'] == null ? null : map['n'] as String,
      p: map['p'] == null ? null : map['p'] as String,
      q: map['q'] == null ? null : map['q'] as String,
      qi: map['qi'] == null ? null : map['qi'] as String,
      use: map['use'] == null ? null : map['use'] as String,
      x: map['x'] == null ? null : map['x'] as String,
      x5C: map['x5C'] == null ? null : (map['x5C'] as List).cast<String>(),
      y: map['y'] == null ? null : map['y'] as String,
    );
  }
}

