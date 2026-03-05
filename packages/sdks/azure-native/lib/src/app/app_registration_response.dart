// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the app registration for providers that have app ids and app secrets
class AppRegistrationResponse {
  /// The App ID of the app used for login.
  final pulumi.Input<String>? appId;
  /// The app setting name that contains the app secret.
  final pulumi.Input<String>? appSecretSettingName;

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
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appSecretSettingName: (() { final guardedValue = map['appSecretSettingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

