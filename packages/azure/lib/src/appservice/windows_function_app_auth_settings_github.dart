// ignore_for_file: unused_element, unnecessary_cast


class WindowsFunctionAppAuthSettingsGithub {
  /// The ID of the GitHub app used for login.
  final String clientId;
  /// The Client Secret of the GitHub app used for GitHub login. Cannot be specified with `client_secret_setting_name`.
  final String? clientSecret;
  /// The app setting name that contains the `client_secret` value used for GitHub login. Cannot be specified with `client_secret`.
  final String? clientSecretSettingName;
  /// Specifies a list of OAuth 2.0 scopes that will be requested as part of GitHub login authentication.
  final List<String>? oauthScopes;

  /// Creates a new [WindowsFunctionAppAuthSettingsGithub].
  /// [clientId] The ID of the GitHub app used for login.
  /// [clientSecret] The Client Secret of the GitHub app used for GitHub login. Cannot be specified with `client_secret_setting_name`.
  /// [clientSecretSettingName] The app setting name that contains the `client_secret` value used for GitHub login. Cannot be specified with `client_secret`.
  /// [oauthScopes] Specifies a list of OAuth 2.0 scopes that will be requested as part of GitHub login authentication.
  WindowsFunctionAppAuthSettingsGithub({
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

  factory WindowsFunctionAppAuthSettingsGithub.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppAuthSettingsGithub(
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
      clientSecretSettingName: map['clientSecretSettingName'] == null ? null : map['clientSecretSettingName'] as String,
      oauthScopes: map['oauthScopes'] == null ? null : (map['oauthScopes'] as List).cast<String>(),
    );
  }
}

