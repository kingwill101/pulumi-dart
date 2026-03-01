// ignore_for_file: unused_element, unnecessary_cast


class WindowsWebAppAuthSettingsGoogle {
  /// The OpenID Connect Client ID for the Google web application.
  final String clientId;
  /// The client secret associated with the Google web application. Cannot be specified with `client_secret_setting_name`.
  final String? clientSecret;
  /// The app setting name that contains the `client_secret` value used for Google login. Cannot be specified with `client_secret`.
  final String? clientSecretSettingName;
  /// Specifies a list of OAuth 2.0 scopes that will be requested as part of Google Sign-In authentication. If not specified, `openid`, `profile`, and `email` are used as default scopes.
  final List<String>? oauthScopes;

  /// Creates a new [WindowsWebAppAuthSettingsGoogle].
  /// [clientId] The OpenID Connect Client ID for the Google web application.
  /// [clientSecret] The client secret associated with the Google web application. Cannot be specified with `client_secret_setting_name`.
  /// [clientSecretSettingName] The app setting name that contains the `client_secret` value used for Google login. Cannot be specified with `client_secret`.
  /// [oauthScopes] Specifies a list of OAuth 2.0 scopes that will be requested as part of Google Sign-In authentication. If not specified, `openid`, `profile`, and `email` are used as default scopes.
  WindowsWebAppAuthSettingsGoogle({
    required this.clientId,
    this.clientSecret,
    this.clientSecretSettingName,
    this.oauthScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': ?clientSecret,
      'clientSecretSettingName': ?clientSecretSettingName,
      'oauthScopes': ?oauthScopes,
    };
  }

  factory WindowsWebAppAuthSettingsGoogle.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppAuthSettingsGoogle(
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
      clientSecretSettingName: map['clientSecretSettingName'] == null ? null : map['clientSecretSettingName'] as String,
      oauthScopes: map['oauthScopes'] == null ? null : (map['oauthScopes'] as List).cast<String>(),
    );
  }
}

