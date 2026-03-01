// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsFunctionAppAuthSettingFacebook {
  /// The App ID of the Facebook app used for login.
  final String appId;
  /// The App Secret of the Facebook app used for Facebook Login.
  final String appSecret;
  /// The app setting name that contains the `app_secret` value used for Facebook Login.
  final String appSecretSettingName;
  /// A list of OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication.
  final List<String> oauthScopes;

  /// Creates a new [GetWindowsFunctionAppAuthSettingFacebook].
  /// [appId] The App ID of the Facebook app used for login.
  /// [appSecret] The App Secret of the Facebook app used for Facebook Login.
  /// [appSecretSettingName] The app setting name that contains the `app_secret` value used for Facebook Login.
  /// [oauthScopes] A list of OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication.
  GetWindowsFunctionAppAuthSettingFacebook({
    required this.appId,
    required this.appSecret,
    required this.appSecretSettingName,
    required this.oauthScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'appSecret': appSecret,
      'appSecretSettingName': appSecretSettingName,
      'oauthScopes': oauthScopes,
    };
  }

  factory GetWindowsFunctionAppAuthSettingFacebook.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppAuthSettingFacebook(
      appId: map['appId'] as String,
      appSecret: map['appSecret'] as String,
      appSecretSettingName: map['appSecretSettingName'] as String,
      oauthScopes: (map['oauthScopes'] as List).cast<String>(),
    );
  }
}

