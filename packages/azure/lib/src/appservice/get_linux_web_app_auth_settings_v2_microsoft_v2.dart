// ignore_for_file: unused_element, unnecessary_cast


class GetLinuxWebAppAuthSettingsV2MicrosoftV2 {
  /// The list of Allowed Audiences that are be requested as part of Microsoft Sign-In authentication.
  final List<String> allowedAudiences;
  /// The OAuth 2.0 client ID used by the app for authentication.
  final String clientId;
  /// The app setting name containing the OAuth 2.0 client secret used by the app for authentication.
  final String clientSecretSettingName;
  /// The list of Login scopes that are requested as part of Microsoft Account authentication.
  final List<String> loginScopes;

  /// Creates a new [GetLinuxWebAppAuthSettingsV2MicrosoftV2].
  /// [allowedAudiences] The list of Allowed Audiences that are be requested as part of Microsoft Sign-In authentication.
  /// [clientId] The OAuth 2.0 client ID used by the app for authentication.
  /// [clientSecretSettingName] The app setting name containing the OAuth 2.0 client secret used by the app for authentication.
  /// [loginScopes] The list of Login scopes that are requested as part of Microsoft Account authentication.
  GetLinuxWebAppAuthSettingsV2MicrosoftV2({
    required this.allowedAudiences,
    required this.clientId,
    required this.clientSecretSettingName,
    required this.loginScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAudiences': allowedAudiences,
      'clientId': clientId,
      'clientSecretSettingName': clientSecretSettingName,
      'loginScopes': loginScopes,
    };
  }

  factory GetLinuxWebAppAuthSettingsV2MicrosoftV2.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppAuthSettingsV2MicrosoftV2(
      allowedAudiences: (map['allowedAudiences'] as List).cast<String>(),
      clientId: map['clientId'] as String,
      clientSecretSettingName: map['clientSecretSettingName'] as String,
      loginScopes: (map['loginScopes'] as List).cast<String>(),
    );
  }
}

