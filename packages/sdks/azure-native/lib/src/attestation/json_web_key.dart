// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JsonWebKey {
  /// The "alg" (algorithm) parameter identifies the algorithm intended for
  /// use with the key.  The values used should either be registered in the
  /// IANA "JSON Web Signature and Encryption Algorithms" registry
  /// established by [JWA] or be a value that contains a Collision-
  /// Resistant Name.
  final pulumi.Input<String>? alg;
  /// The "crv" (curve) parameter identifies the curve type
  final pulumi.Input<String>? crv;
  /// RSA private exponent or ECC private key
  final pulumi.Input<String>? d;
  /// RSA Private Key Parameter
  final pulumi.Input<String>? dp;
  /// RSA Private Key Parameter
  final pulumi.Input<String>? dq;
  /// RSA public exponent, in Base64
  final pulumi.Input<String>? e;
  /// Symmetric key
  final pulumi.Input<String>? k;
  /// The "kid" (key ID) parameter is used to match a specific key.  This
  /// is used, for instance, to choose among a set of keys within a JWK Set
  /// during key rollover.  The structure of the "kid" value is
  /// unspecified.  When "kid" values are used within a JWK Set, different
  /// keys within the JWK Set SHOULD use distinct "kid" values.  (One
  /// example in which different keys might use the same "kid" value is if
  /// they have different "kty" (key type) values but are considered to be
  /// equivalent alternatives by the application using them.)  The "kid"
  /// value is a case-sensitive string.
  final pulumi.Input<String>? kid;
  /// The "kty" (key type) parameter identifies the cryptographic algorithm
  /// family used with the key, such as "RSA" or "EC". "kty" values should
  /// either be registered in the IANA "JSON Web Key Types" registry
  /// established by [JWA] or be a value that contains a Collision-
  /// Resistant Name.  The "kty" value is a case-sensitive string.
  final pulumi.Input<String> kty;
  /// RSA modulus, in Base64
  final pulumi.Input<String>? n;
  /// RSA secret prime
  final pulumi.Input<String>? p;
  /// RSA secret prime, with p &lt; q
  final pulumi.Input<String>? q;
  /// RSA Private Key Parameter
  final pulumi.Input<String>? qi;
  /// Use ("public key use") identifies the intended use of
  /// the public key. The "use" parameter is employed to indicate whether
  /// a public key is used for encrypting data or verifying the signature
  /// on data. Values are commonly "sig" (signature) or "enc" (encryption).
  final pulumi.Input<String>? use;
  /// X coordinate for the Elliptic Curve point
  final pulumi.Input<String>? x;
  /// The "x5c" (X.509 certificate chain) parameter contains a chain of one
  /// or more PKIX certificates [RFC5280].  The certificate chain is
  /// represented as a JSON array of certificate value strings.  Each
  /// string in the array is a base64-encoded (Section 4 of [RFC4648] --
  /// not base64url-encoded) DER [ITU.X690.1994] PKIX certificate value.
  /// The PKIX certificate containing the key value MUST be the first
  /// certificate.
  final pulumi.Input<List<String>>? x5C;
  /// Y coordinate for the Elliptic Curve point
  final pulumi.Input<String>? y;

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
  /// [q] RSA secret prime, with p &lt; q
  /// [qi] RSA Private Key Parameter
  /// [use] Use ("public key use") identifies the intended use of
  /// [x] X coordinate for the Elliptic Curve point
  /// [x5C] The "x5c" (X.509 certificate chain) parameter contains a chain of one
  /// [y] Y coordinate for the Elliptic Curve point
  const JsonWebKey({
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
      alg: (() { final guardedValue = map['alg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crv: (() { final guardedValue = map['crv']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      d: (() { final guardedValue = map['d']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dp: (() { final guardedValue = map['dp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dq: (() { final guardedValue = map['dq']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      e: (() { final guardedValue = map['e']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      k: (() { final guardedValue = map['k']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kid: (() { final guardedValue = map['kid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kty: pulumi.Input.fromValue(map['kty'] as String),
      n: (() { final guardedValue = map['n']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      p: (() { final guardedValue = map['p']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      q: (() { final guardedValue = map['q']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qi: (() { final guardedValue = map['qi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      use: (() { final guardedValue = map['use']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      x: (() { final guardedValue = map['x']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      x5C: (() { final guardedValue = map['x5C']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      y: (() { final guardedValue = map['y']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

