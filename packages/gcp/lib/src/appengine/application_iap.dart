// ignore_for_file: unused_element, unnecessary_cast

class ApplicationIap {
  /// (Optional) Whether the serving infrastructure will authenticate and authorize all incoming requests.
  /// (default is false)
  final bool? enabled;

  /// OAuth2 client ID to use for the authentication flow.
  final String oauth2ClientId;

  /// OAuth2 client secret to use for the authentication flow.
  /// The SHA-256 hash of the value is returned in the oauth2ClientSecretSha256 field.
  final String oauth2ClientSecret;

  /// Hex-encoded SHA-256 hash of the client secret.
  final String? oauth2ClientSecretSha256;

  /// Creates a new [ApplicationIap].
  /// [enabled] (Optional) Whether the serving infrastructure will authenticate and authorize all incoming requests.
  /// [oauth2ClientId] OAuth2 client ID to use for the authentication flow.
  /// [oauth2ClientSecret] OAuth2 client secret to use for the authentication flow.
  /// [oauth2ClientSecretSha256] Hex-encoded SHA-256 hash of the client secret.
  ApplicationIap({
    this.enabled,
    required this.oauth2ClientId,
    required this.oauth2ClientSecret,
    this.oauth2ClientSecretSha256,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    map['oauth2ClientId'] = oauth2ClientId;
    map['oauth2ClientSecret'] = oauth2ClientSecret;
    final oauth2ClientSecretSha256Value = oauth2ClientSecretSha256;
    if (oauth2ClientSecretSha256Value != null) {
      map['oauth2ClientSecretSha256'] = oauth2ClientSecretSha256Value;
    }
    return map;
  }

  factory ApplicationIap.fromMap(Map<String, dynamic> map) {
    return ApplicationIap(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      oauth2ClientId: map['oauth2ClientId'] as String,
      oauth2ClientSecret: map['oauth2ClientSecret'] as String,
      oauth2ClientSecretSha256: map['oauth2ClientSecretSha256'] == null
          ? null
          : map['oauth2ClientSecretSha256'] as String,
    );
  }
}
