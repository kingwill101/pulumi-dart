// ignore_for_file: unused_element, unnecessary_cast

/// Identity-Aware Proxy
class IdentityAwareProxyResponse {
  /// Whether the serving infrastructure will authenticate and authorize all incoming requests.If true, the oauth2_client_id and oauth2_client_secret fields must be non-empty.
  final bool enabled;

  /// OAuth2 client ID to use for the authentication flow.
  final String oauth2ClientId;

  /// OAuth2 client secret to use for the authentication flow.For security reasons, this value cannot be retrieved via the API. Instead, the SHA-256 hash of the value is returned in the oauth2_client_secret_sha256 field.@InputOnly
  final String oauth2ClientSecret;

  /// Hex-encoded SHA-256 hash of the client secret.
  final String oauth2ClientSecretSha256;

  IdentityAwareProxyResponse({
    required this.enabled,
    required this.oauth2ClientId,
    required this.oauth2ClientSecret,
    required this.oauth2ClientSecretSha256,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['oauth2ClientId'] = oauth2ClientId;
    map['oauth2ClientSecret'] = oauth2ClientSecret;
    map['oauth2ClientSecretSha256'] = oauth2ClientSecretSha256;
    return map;
  }

  factory IdentityAwareProxyResponse.fromMap(Map<String, dynamic> map) {
    return IdentityAwareProxyResponse(
      enabled: map['enabled'] as bool,
      oauth2ClientId: map['oauth2ClientId'] as String,
      oauth2ClientSecret: map['oauth2ClientSecret'] as String,
      oauth2ClientSecretSha256: map['oauth2ClientSecretSha256'] as String,
    );
  }
}
