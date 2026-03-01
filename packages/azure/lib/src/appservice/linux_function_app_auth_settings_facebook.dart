// ignore_for_file: unused_element, unnecessary_cast


class LinuxFunctionAppAuthSettingsFacebook {
  /// The App ID of the Facebook app used for login.
  final String appId;
  /// The App Secret of the Facebook app used for Facebook login. Cannot be specified with `app_secret_setting_name`.
  final String? appSecret;
  /// The app setting name that contains the `app_secret` value used for Facebook login. Cannot be specified with `app_secret`.
  final String? appSecretSettingName;
  /// Specifies a list of OAuth 2.0 scopes to be requested as part of Facebook login authentication.
  final List<String>? oauthScopes;

  /// Creates a new [LinuxFunctionAppAuthSettingsFacebook].
  /// [appId] The App ID of the Facebook app used for login.
  /// [appSecret] The App Secret of the Facebook app used for Facebook login. Cannot be specified with `app_secret_setting_name`.
  /// [appSecretSettingName] The app setting name that contains the `app_secret` value used for Facebook login. Cannot be specified with `app_secret`.
  /// [oauthScopes] Specifies a list of OAuth 2.0 scopes to be requested as part of Facebook login authentication.
  LinuxFunctionAppAuthSettingsFacebook({
    required this.appId,
    this.appSecret,
    this.appSecretSettingName,
    this.oauthScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'appSecret': ?appSecret,
      'appSecretSettingName': ?appSecretSettingName,
      'oauthScopes': ?oauthScopes,
    };
  }

  factory LinuxFunctionAppAuthSettingsFacebook.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppAuthSettingsFacebook(
      appId: map['appId'] as String,
      appSecret: map['appSecret'] == null ? null : map['appSecret'] as String,
      appSecretSettingName: map['appSecretSettingName'] == null ? null : map['appSecretSettingName'] as String,
      oauthScopes: map['oauthScopes'] == null ? null : (map['oauthScopes'] as List).cast<String>(),
    );
  }
}

