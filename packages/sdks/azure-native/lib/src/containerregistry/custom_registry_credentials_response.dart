// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_object_response.dart';

/// Describes the credentials that will be used to access a custom registry during a run.
class CustomRegistryCredentialsResponse {
  /// Indicates the managed identity assigned to the custom credential. If a user-assigned identity
  /// this value is the Client ID. If a system-assigned identity, the value will be `system`. In
  /// the case of a system-assigned identity, the Client ID will be determined by the runner. This
  /// identity may be used to authenticate to key vault to retrieve credentials or it may be the only
  /// source of authentication used for accessing the registry.
  final pulumi.Input<String>? identity;

  /// The password for logging into the custom registry. The password is a secret
  /// object that allows multiple ways of providing the value for it.
  final pulumi.Input<SecretObjectResponse>? password;

  /// The username for logging into the custom registry.
  final pulumi.Input<SecretObjectResponse>? userName;

  /// Creates a new [CustomRegistryCredentialsResponse].
  /// [identity] Indicates the managed identity assigned to the custom credential. If a user-assigned identity
  /// [password] The password for logging into the custom registry. The password is a secret
  /// [userName] The username for logging into the custom registry.
  CustomRegistryCredentialsResponse({
    this.identity,
    this.password,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'password':
          ?pulumi.Input.mapOptionalInputValue<
            SecretObjectResponse,
            Map<String, dynamic>
          >(password, (value) => value.toMap()),
      'userName':
          ?pulumi.Input.mapOptionalInputValue<
            SecretObjectResponse,
            Map<String, dynamic>
          >(userName, (value) => value.toMap()),
    };
  }

  factory CustomRegistryCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return CustomRegistryCredentialsResponse(
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecretObjectResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      userName: (() {
        final guardedValue = map['userName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecretObjectResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
