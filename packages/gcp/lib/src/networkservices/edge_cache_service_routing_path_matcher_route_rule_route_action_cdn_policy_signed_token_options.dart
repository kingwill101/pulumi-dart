// ignore_for_file: unused_element, unnecessary_cast


class EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedTokenOptions {
  /// The allowed signature algorithms to use.
  /// Defaults to using only ED25519.
  /// You may specify up to 3 signature algorithms to use.
  /// Each value may be one of: `ED25519`, `HMAC_SHA_256`, `HMAC_SHA1`.
  final List<String>? allowedSignatureAlgorithms;
  /// The query parameter in which to find the token.
  /// The name must be 1-64 characters long and match the regular expression `a-zA-Z*` which means the first character must be a letter, and all following characters must be a dash, underscore, letter or digit.
  /// Defaults to `edge-cache-token`.
  final String? tokenQueryParameter;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedTokenOptions].
  /// [allowedSignatureAlgorithms] The allowed signature algorithms to use.
  /// [tokenQueryParameter] The query parameter in which to find the token.
  EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedTokenOptions({
    this.allowedSignatureAlgorithms,
    this.tokenQueryParameter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedSignatureAlgorithms': ?allowedSignatureAlgorithms,
      'tokenQueryParameter': ?tokenQueryParameter,
    };
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedTokenOptions.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicySignedTokenOptions(
      allowedSignatureAlgorithms: map['allowedSignatureAlgorithms'] == null ? null : (map['allowedSignatureAlgorithms'] as List).cast<String>(),
      tokenQueryParameter: map['tokenQueryParameter'] == null ? null : map['tokenQueryParameter'] as String,
    );
  }
}

