// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionAuthenticationConfigurationOauth2PropertiesOauth2ClientApplication {
  /// Reference to an AWS-managed client application.
  final pulumi.Input<String>? awsManagedClientApplicationReference;
  /// Client ID for a user-managed client application.
  final pulumi.Input<String>? userManagedClientApplicationClientId;

  /// Creates a new [ConnectionAuthenticationConfigurationOauth2PropertiesOauth2ClientApplication].
  /// [awsManagedClientApplicationReference] Reference to an AWS-managed client application.
  /// [userManagedClientApplicationClientId] Client ID for a user-managed client application.
  const ConnectionAuthenticationConfigurationOauth2PropertiesOauth2ClientApplication({
    this.awsManagedClientApplicationReference,
    this.userManagedClientApplicationClientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsManagedClientApplicationReference': ?awsManagedClientApplicationReference,
      'userManagedClientApplicationClientId': ?userManagedClientApplicationClientId,
    };
  }

  factory ConnectionAuthenticationConfigurationOauth2PropertiesOauth2ClientApplication.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthenticationConfigurationOauth2PropertiesOauth2ClientApplication(
      awsManagedClientApplicationReference: (() { final guardedValue = map['awsManagedClientApplicationReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userManagedClientApplicationClientId: (() { final guardedValue = map['userManagedClientApplicationClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
