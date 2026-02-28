// ignore_for_file: unused_element, unnecessary_cast

class RegionBackendServiceIap {
  /// Whether the serving infrastructure will authenticate and authorize all incoming requests.
  final bool enabled;

  /// OAuth2 Client ID for IAP
  final String? oauth2ClientId;

  /// OAuth2 Client Secret for IAP
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? oauth2ClientSecret;

  /// (Output)
  /// OAuth2 Client Secret SHA-256 for IAP
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? oauth2ClientSecretSha256;

  /// Creates a new [RegionBackendServiceIap].
  /// [enabled] Whether the serving infrastructure will authenticate and authorize all incoming requests.
  /// [oauth2ClientId] OAuth2 Client ID for IAP
  /// [oauth2ClientSecret] OAuth2 Client Secret for IAP
  /// [oauth2ClientSecretSha256] (Output)
  RegionBackendServiceIap({
    required this.enabled,
    this.oauth2ClientId,
    this.oauth2ClientSecret,
    this.oauth2ClientSecretSha256,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    final oauth2ClientIdValue = oauth2ClientId;
    if (oauth2ClientIdValue != null) {
      map['oauth2ClientId'] = oauth2ClientIdValue;
    }
    final oauth2ClientSecretValue = oauth2ClientSecret;
    if (oauth2ClientSecretValue != null) {
      map['oauth2ClientSecret'] = oauth2ClientSecretValue;
    }
    final oauth2ClientSecretSha256Value = oauth2ClientSecretSha256;
    if (oauth2ClientSecretSha256Value != null) {
      map['oauth2ClientSecretSha256'] = oauth2ClientSecretSha256Value;
    }
    return map;
  }

  factory RegionBackendServiceIap.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceIap(
      enabled: map['enabled'] as bool,
      oauth2ClientId: map['oauth2ClientId'] == null
          ? null
          : map['oauth2ClientId'] as String,
      oauth2ClientSecret: map['oauth2ClientSecret'] == null
          ? null
          : map['oauth2ClientSecret'] as String,
      oauth2ClientSecretSha256: map['oauth2ClientSecretSha256'] == null
          ? null
          : map['oauth2ClientSecretSha256'] as String,
    );
  }
}
