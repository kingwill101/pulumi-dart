// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../connection_eventing_config_auth_config_additional_variable/connection_eventing_config_auth_config_additional_variable.dart';
import '../connection_eventing_config_auth_config_user_password/connection_eventing_config_auth_config_user_password.dart';

class ConnectionEventingConfigAuthConfig {
  /// List containing additional auth configs.
  /// Structure is documented below.
  final List<ConnectionEventingConfigAuthConfigAdditionalVariable>?
      additionalVariables;

  /// The type of authentication configured.
  final String? authKey;

  /// authType of the Connection
  /// Possible values are: `USER_PASSWORD`.
  final String authType;

  /// User password for Authentication.
  /// Structure is documented below.
  final ConnectionEventingConfigAuthConfigUserPassword userPassword;

  ConnectionEventingConfigAuthConfig({
    this.additionalVariables,
    this.authKey,
    required this.authType,
    required this.userPassword,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalVariablesValue = additionalVariables;
    if (additionalVariablesValue != null) {
      map['additionalVariables'] = Input.encodeList<
              ConnectionEventingConfigAuthConfigAdditionalVariable,
              Map<String, dynamic>>(
          additionalVariablesValue, (value) => value.toMap());
    }
    final authKeyValue = authKey;
    if (authKeyValue != null) {
      map['authKey'] = authKeyValue;
    }
    map['authType'] = authType;
    map['userPassword'] = userPassword.toMap();
    return map;
  }

  factory ConnectionEventingConfigAuthConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionEventingConfigAuthConfig(
      additionalVariables: map['additionalVariables'] == null
          ? null
          : Input.decodeList<
                  ConnectionEventingConfigAuthConfigAdditionalVariable>(
              map['additionalVariables'],
              (value) =>
                  ConnectionEventingConfigAuthConfigAdditionalVariable.fromMap(
                      (value as Map).cast<String, dynamic>())),
      authKey: map['authKey'] == null ? null : map['authKey'] as String,
      authType: map['authType'] as String,
      userPassword: ConnectionEventingConfigAuthConfigUserPassword.fromMap(
          (map['userPassword'] as Map).cast<String, dynamic>()),
    );
  }
}
