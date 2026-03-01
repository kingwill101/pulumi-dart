// ignore_for_file: unused_element, unnecessary_cast

class GetBackendServiceIap {
  /// Whether the serving infrastructure will authenticate and authorize all incoming requests.
  final bool enabled;

  /// OAuth2 Client ID for IAP
  final String oauth2ClientId;

  /// OAuth2 Client Secret for IAP
  final String oauth2ClientSecret;

  /// OAuth2 Client Secret SHA-256 for IAP
  final String oauth2ClientSecretSha256;

  /// Creates a new [GetBackendServiceIap].
  /// [enabled] Whether the serving infrastructure will authenticate and authorize all incoming requests.
  /// [oauth2ClientId] OAuth2 Client ID for IAP
  /// [oauth2ClientSecret] OAuth2 Client Secret for IAP
  /// [oauth2ClientSecretSha256] OAuth2 Client Secret SHA-256 for IAP
  GetBackendServiceIap({
    required this.enabled,
    required this.oauth2ClientId,
    required this.oauth2ClientSecret,
    required this.oauth2ClientSecretSha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'oauth2ClientId': oauth2ClientId,
      'oauth2ClientSecret': oauth2ClientSecret,
      'oauth2ClientSecretSha256': oauth2ClientSecretSha256,
    };
  }

  factory GetBackendServiceIap.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceIap(
      enabled: map['enabled'] as bool,
      oauth2ClientId: map['oauth2ClientId'] as String,
      oauth2ClientSecret: map['oauth2ClientSecret'] as String,
      oauth2ClientSecretSha256: map['oauth2ClientSecretSha256'] as String,
    );
  }
}
