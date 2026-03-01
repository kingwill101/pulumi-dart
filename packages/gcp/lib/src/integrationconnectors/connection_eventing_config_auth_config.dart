// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_eventing_config_auth_config_additional_variable.dart';
import 'connection_eventing_config_auth_config_user_password.dart';

class ConnectionEventingConfigAuthConfig {
  /// List containing additional auth configs.
  /// Structure is documented below.
  final List<ConnectionEventingConfigAuthConfigAdditionalVariable>? additionalVariables;
  /// The type of authentication configured.
  final String? authKey;
  /// authType of the Connection
  /// Possible values are: `USER_PASSWORD`.
  final String authType;
  /// User password for Authentication.
  /// Structure is documented below.
  final ConnectionEventingConfigAuthConfigUserPassword userPassword;

  /// Creates a new [ConnectionEventingConfigAuthConfig].
  /// [additionalVariables] List containing additional auth configs.
  /// [authKey] The type of authentication configured.
  /// [authType] authType of the Connection
  /// [userPassword] User password for Authentication.
  ConnectionEventingConfigAuthConfig({
    this.additionalVariables,
    this.authKey,
    required this.authType,
    required this.userPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalVariables': ?additionalVariables == null ? null : pulumi.Input.encodeList<ConnectionEventingConfigAuthConfigAdditionalVariable, Map<String, dynamic>>(additionalVariables!, (value) => value.toMap()),
      'authKey': ?authKey,
      'authType': authType,
      'userPassword': userPassword.toMap(),
    };
  }

  factory ConnectionEventingConfigAuthConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionEventingConfigAuthConfig(
      additionalVariables: map['additionalVariables'] == null ? null : pulumi.Input.decodeList<ConnectionEventingConfigAuthConfigAdditionalVariable>(map['additionalVariables'], (value) => ConnectionEventingConfigAuthConfigAdditionalVariable.fromMap((value as Map).cast<String, dynamic>())),
      authKey: map['authKey'] == null ? null : map['authKey'] as String,
      authType: map['authType'] as String,
      userPassword: ConnectionEventingConfigAuthConfigUserPassword.fromMap((map['userPassword'] as Map).cast<String, dynamic>()),
    );
  }
}

