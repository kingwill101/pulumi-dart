// ignore_for_file: unused_element, unnecessary_cast


/// The OIDC issuer details for JWTAuthenticator.
class JWTAuthenticatorIssuer {
  /// The set of acceptable audiences the JWT must be issued to. At least one is required. When multiple is set, AudienceMatchPolicy is used in API Server configuration.
  final List<String> audiences;
  /// The issuer URL. The URL must begin with the scheme https and cannot contain a query string or fragment. This must match the "iss" claim in the presented JWT, and the issuer returned from discovery.
  final String url;

  /// Creates a new [JWTAuthenticatorIssuer].
  /// [audiences] The set of acceptable audiences the JWT must be issued to. At least one is required. When multiple is set, AudienceMatchPolicy is used in API Server configuration.
  /// [url] The issuer URL. The URL must begin with the scheme https and cannot contain a query string or fragment. This must match the "iss" claim in the presented JWT, and the issuer returned from discovery.
  JWTAuthenticatorIssuer({
    required this.audiences,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audiences': audiences,
      'url': url,
    };
  }

  factory JWTAuthenticatorIssuer.fromMap(Map<String, dynamic> map) {
    return JWTAuthenticatorIssuer(
      audiences: (map['audiences'] as List).cast<String>(),
      url: map['url'] as String,
    );
  }
}

