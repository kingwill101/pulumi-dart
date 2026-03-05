// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the app registration for providers that have client ids and client secrets
class ClientRegistration {
  /// The Client ID of the app used for login.
  final pulumi.Input<String>? clientId;
  /// The app setting name that contains the client secret.
  final pulumi.Input<String>? clientSecretSettingName;

  /// Creates a new [ClientRegistration].
  /// [clientId] The Client ID of the app used for login.
  /// [clientSecretSettingName] The app setting name that contains the client secret.
  ClientRegistration({
    this.clientId,
    this.clientSecretSettingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecretSettingName': ?clientSecretSettingName,
    };
  }

  factory ClientRegistration.fromMap(Map<String, dynamic> map) {
    return ClientRegistration(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretSettingName: (() { final guardedValue = map['clientSecretSettingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

