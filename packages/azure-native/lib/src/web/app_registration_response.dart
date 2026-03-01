// ignore_for_file: unused_element, unnecessary_cast


/// The configuration settings of the app registration for providers that have app ids and app secrets
class AppRegistrationResponse {
  /// The App ID of the app used for login.
  final String? appId;
  /// The app setting name that contains the app secret.
  final String? appSecretSettingName;

  /// Creates a new [AppRegistrationResponse].
  /// [appId] The App ID of the app used for login.
  /// [appSecretSettingName] The app setting name that contains the app secret.
  AppRegistrationResponse({
    this.appId,
    this.appSecretSettingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'appSecretSettingName': ?appSecretSettingName,
    };
  }

  factory AppRegistrationResponse.fromMap(Map<String, dynamic> map) {
    return AppRegistrationResponse(
      appId: map['appId'] == null ? null : map['appId'] as String,
      appSecretSettingName: map['appSecretSettingName'] == null ? null : map['appSecretSettingName'] as String,
    );
  }
}

