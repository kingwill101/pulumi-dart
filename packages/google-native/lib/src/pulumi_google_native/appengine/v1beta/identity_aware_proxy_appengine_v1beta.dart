// ignore_for_file: unused_element, unnecessary_cast

/// Identity-Aware Proxy
class IdentityAwareProxyAppengineV1beta {
  /// Whether the serving infrastructure will authenticate and authorize all incoming requests.If true, the oauth2_client_id and oauth2_client_secret fields must be non-empty.
  final bool? enabled;

  /// OAuth2 client ID to use for the authentication flow.
  final String? oauth2ClientId;

  /// OAuth2 client secret to use for the authentication flow.For security reasons, this value cannot be retrieved via the API. Instead, the SHA-256 hash of the value is returned in the oauth2_client_secret_sha256 field.@InputOnly
  final String? oauth2ClientSecret;

  IdentityAwareProxyAppengineV1beta({
    this.enabled,
    this.oauth2ClientId,
    this.oauth2ClientSecret,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final oauth2ClientIdValue = oauth2ClientId;
    if (oauth2ClientIdValue != null) {
      map['oauth2ClientId'] = oauth2ClientIdValue;
    }
    final oauth2ClientSecretValue = oauth2ClientSecret;
    if (oauth2ClientSecretValue != null) {
      map['oauth2ClientSecret'] = oauth2ClientSecretValue;
    }
    return map;
  }

  factory IdentityAwareProxyAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return IdentityAwareProxyAppengineV1beta(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      oauth2ClientId: map['oauth2ClientId'] == null
          ? null
          : map['oauth2ClientId'] as String,
      oauth2ClientSecret: map['oauth2ClientSecret'] == null
          ? null
          : map['oauth2ClientSecret'] as String,
    );
  }
}
