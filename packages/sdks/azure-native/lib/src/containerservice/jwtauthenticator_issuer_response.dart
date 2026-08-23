// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The OIDC issuer details for JWTAuthenticator.
class JWTAuthenticatorIssuerResponse {
  /// The set of acceptable audiences the JWT must be issued to. At least one is required. When multiple is set, AudienceMatchPolicy is used in API Server configuration.
  final pulumi.Input<List<String>> audiences;
  /// The issuer URL. The URL must begin with the scheme https and cannot contain a query string or fragment. This must match the "iss" claim in the presented JWT, and the issuer returned from discovery.
  final pulumi.Input<String> url;

  /// Creates a new [JWTAuthenticatorIssuerResponse].
  /// [audiences] The set of acceptable audiences the JWT must be issued to. At least one is required. When multiple is set, AudienceMatchPolicy is used in API Server configuration.
  /// [url] The issuer URL. The URL must begin with the scheme https and cannot contain a query string or fragment. This must match the "iss" claim in the presented JWT, and the issuer returned from discovery.
  const JWTAuthenticatorIssuerResponse({
    required this.audiences,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audiences': audiences,
      'url': url,
    };
  }

  factory JWTAuthenticatorIssuerResponse.fromMap(Map<String, dynamic> map) {
    return JWTAuthenticatorIssuerResponse(
      audiences: pulumi.Input.fromValue((map['audiences'] as List).cast<String>()),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
