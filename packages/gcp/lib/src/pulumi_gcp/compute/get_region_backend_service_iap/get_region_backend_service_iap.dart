// ignore_for_file: unused_element, unnecessary_cast

class GetRegionBackendServiceIap {
  /// Whether the serving infrastructure will authenticate and authorize all incoming requests.
  final bool enabled;

  /// OAuth2 Client ID for IAP
  final String oauth2ClientId;

  /// OAuth2 Client Secret for IAP
  final String oauth2ClientSecret;

  /// OAuth2 Client Secret SHA-256 for IAP
  final String oauth2ClientSecretSha256;

  GetRegionBackendServiceIap({
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

  factory GetRegionBackendServiceIap.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceIap(
      enabled: map['enabled'] as bool,
      oauth2ClientId: map['oauth2ClientId'] as String,
      oauth2ClientSecret: map['oauth2ClientSecret'] as String,
      oauth2ClientSecretSha256: map['oauth2ClientSecretSha256'] as String,
    );
  }
}
