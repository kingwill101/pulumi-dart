// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_auth_config_additional_variable.dart';
import 'connection_auth_config_oauth2_auth_code_flow.dart';
import 'connection_auth_config_oauth2_client_credentials.dart';
import 'connection_auth_config_oauth2_jwt_bearer.dart';
import 'connection_auth_config_ssh_public_key.dart';
import 'connection_auth_config_user_password.dart';

class ConnectionAuthConfig {
  /// List containing additional auth configs.
  /// Structure is documented below.
  final List<ConnectionAuthConfigAdditionalVariable>? additionalVariables;

  /// The type of authentication configured.
  final String? authKey;

  /// authType of the Connection
  /// Possible values are: `USER_PASSWORD`.
  final String authType;

  /// Parameters to support Oauth 2.0 Auth Code Grant Authentication.
  /// Structure is documented below.
  final ConnectionAuthConfigOauth2AuthCodeFlow? oauth2AuthCodeFlow;

  /// OAuth3 Client Credentials for Authentication.
  /// Structure is documented below.
  final ConnectionAuthConfigOauth2ClientCredentials? oauth2ClientCredentials;

  /// OAuth2 JWT Bearer for Authentication.
  /// Structure is documented below.
  final ConnectionAuthConfigOauth2JwtBearer? oauth2JwtBearer;

  /// SSH Public Key for Authentication.
  /// Structure is documented below.
  final ConnectionAuthConfigSshPublicKey? sshPublicKey;

  /// User password for Authentication.
  /// Structure is documented below.
  final ConnectionAuthConfigUserPassword? userPassword;

  /// Creates a new [ConnectionAuthConfig].
  /// [additionalVariables] List containing additional auth configs.
  /// [authKey] The type of authentication configured.
  /// [authType] authType of the Connection
  /// [oauth2AuthCodeFlow] Parameters to support Oauth 2.0 Auth Code Grant Authentication.
  /// [oauth2ClientCredentials] OAuth3 Client Credentials for Authentication.
  /// [oauth2JwtBearer] OAuth2 JWT Bearer for Authentication.
  /// [sshPublicKey] SSH Public Key for Authentication.
  /// [userPassword] User password for Authentication.
  ConnectionAuthConfig({
    this.additionalVariables,
    this.authKey,
    required this.authType,
    this.oauth2AuthCodeFlow,
    this.oauth2ClientCredentials,
    this.oauth2JwtBearer,
    this.sshPublicKey,
    this.userPassword,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalVariablesValue = additionalVariables;
    if (additionalVariablesValue != null) {
      map['additionalVariables'] = pulumi.Input.encodeList<
              ConnectionAuthConfigAdditionalVariable, Map<String, dynamic>>(
          additionalVariablesValue, (value) => value.toMap());
    }
    final authKeyValue = authKey;
    if (authKeyValue != null) {
      map['authKey'] = authKeyValue;
    }
    map['authType'] = authType;
    final oauth2AuthCodeFlowValue = oauth2AuthCodeFlow;
    if (oauth2AuthCodeFlowValue != null) {
      map['oauth2AuthCodeFlow'] = oauth2AuthCodeFlowValue.toMap();
    }
    final oauth2ClientCredentialsValue = oauth2ClientCredentials;
    if (oauth2ClientCredentialsValue != null) {
      map['oauth2ClientCredentials'] = oauth2ClientCredentialsValue.toMap();
    }
    final oauth2JwtBearerValue = oauth2JwtBearer;
    if (oauth2JwtBearerValue != null) {
      map['oauth2JwtBearer'] = oauth2JwtBearerValue.toMap();
    }
    final sshPublicKeyValue = sshPublicKey;
    if (sshPublicKeyValue != null) {
      map['sshPublicKey'] = sshPublicKeyValue.toMap();
    }
    final userPasswordValue = userPassword;
    if (userPasswordValue != null) {
      map['userPassword'] = userPasswordValue.toMap();
    }
    return map;
  }

  factory ConnectionAuthConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthConfig(
      additionalVariables: map['additionalVariables'] == null
          ? null
          : pulumi.Input.decodeList<ConnectionAuthConfigAdditionalVariable>(
              map['additionalVariables'],
              (value) => ConnectionAuthConfigAdditionalVariable.fromMap(
                  (value as Map).cast<String, dynamic>())),
      authKey: map['authKey'] == null ? null : map['authKey'] as String,
      authType: map['authType'] as String,
      oauth2AuthCodeFlow: map['oauth2AuthCodeFlow'] == null
          ? null
          : ConnectionAuthConfigOauth2AuthCodeFlow.fromMap(
              (map['oauth2AuthCodeFlow'] as Map).cast<String, dynamic>()),
      oauth2ClientCredentials: map['oauth2ClientCredentials'] == null
          ? null
          : ConnectionAuthConfigOauth2ClientCredentials.fromMap(
              (map['oauth2ClientCredentials'] as Map).cast<String, dynamic>()),
      oauth2JwtBearer: map['oauth2JwtBearer'] == null
          ? null
          : ConnectionAuthConfigOauth2JwtBearer.fromMap(
              (map['oauth2JwtBearer'] as Map).cast<String, dynamic>()),
      sshPublicKey: map['sshPublicKey'] == null
          ? null
          : ConnectionAuthConfigSshPublicKey.fromMap(
              (map['sshPublicKey'] as Map).cast<String, dynamic>()),
      userPassword: map['userPassword'] == null
          ? null
          : ConnectionAuthConfigUserPassword.fromMap(
              (map['userPassword'] as Map).cast<String, dynamic>()),
    );
  }
}
