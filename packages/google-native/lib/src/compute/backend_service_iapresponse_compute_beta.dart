// ignore_for_file: unused_element, unnecessary_cast

/// Identity-Aware Proxy
class BackendServiceIAPResponseComputeBeta {
  /// Whether the serving infrastructure will authenticate and authorize all incoming requests.
  final bool enabled;

  /// OAuth2 client ID to use for the authentication flow.
  final String oauth2ClientId;

  /// OAuth2 client secret to use for the authentication flow. For security reasons, this value cannot be retrieved via the API. Instead, the SHA-256 hash of the value is returned in the oauth2ClientSecretSha256 field. @InputOnly
  final String oauth2ClientSecret;

  /// SHA256 hash value for the field oauth2_client_secret above.
  final String oauth2ClientSecretSha256;

  /// Creates a new [BackendServiceIAPResponseComputeBeta].
  /// [enabled] Whether the serving infrastructure will authenticate and authorize all incoming requests.
  /// [oauth2ClientId] OAuth2 client ID to use for the authentication flow.
  /// [oauth2ClientSecret] OAuth2 client secret to use for the authentication flow. For security reasons, this value cannot be retrieved via the API. Instead, the SHA-256 hash of the value is returned in the oauth2ClientSecretSha256 field. @InputOnly
  /// [oauth2ClientSecretSha256] SHA256 hash value for the field oauth2_client_secret above.
  BackendServiceIAPResponseComputeBeta({
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

  factory BackendServiceIAPResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceIAPResponseComputeBeta(
      enabled: map['enabled'] as bool,
      oauth2ClientId: map['oauth2ClientId'] as String,
      oauth2ClientSecret: map['oauth2ClientSecret'] as String,
      oauth2ClientSecretSha256: map['oauth2ClientSecretSha256'] as String,
    );
  }
}
