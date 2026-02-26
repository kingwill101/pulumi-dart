// ignore_for_file: unused_element, unnecessary_cast

class AttachedClusterOidcConfig {
  /// A JSON Web Token (JWT) issuer URI. <span pulumi-lang-nodejs="`issuer`" pulumi-lang-dotnet="`Issuer`" pulumi-lang-go="`issuer`" pulumi-lang-python="`issuer`" pulumi-lang-yaml="`issuer`" pulumi-lang-java="`issuer`">`issuer`</span> must start with `https://`
  final String issuerUrl;

  /// OIDC verification keys in JWKS format (RFC 7517).
  final String? jwks;

  AttachedClusterOidcConfig({
    required this.issuerUrl,
    this.jwks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['issuerUrl'] = issuerUrl;
    final jwksValue = jwks;
    if (jwksValue != null) {
      map['jwks'] = jwksValue;
    }
    return map;
  }

  factory AttachedClusterOidcConfig.fromMap(Map<String, dynamic> map) {
    return AttachedClusterOidcConfig(
      issuerUrl: map['issuerUrl'] as String,
      jwks: map['jwks'] == null ? null : map['jwks'] as String,
    );
  }
}
