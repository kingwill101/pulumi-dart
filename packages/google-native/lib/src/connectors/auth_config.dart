// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_auth_type.dart';
import 'config_variable.dart';
import 'oauth2_auth_code_flow.dart';
import 'oauth2_client_credentials.dart';
import 'oauth2_jwt_bearer.dart';
import 'ssh_public_key.dart';
import 'user_password.dart';

/// AuthConfig defines details of a authentication type.
class AuthConfig {
  /// List containing additional auth configs.
  final List<ConfigVariable>? additionalVariables;

  /// Identifier key for auth config
  final String? authKey;

  /// The type of authentication configured.
  final AuthConfigAuthType? authType;

  /// Oauth2AuthCodeFlow.
  final Oauth2AuthCodeFlow? oauth2AuthCodeFlow;

  /// Oauth2ClientCredentials.
  final Oauth2ClientCredentials? oauth2ClientCredentials;

  /// Oauth2JwtBearer.
  final Oauth2JwtBearer? oauth2JwtBearer;

  /// SSH Public Key.
  final SshPublicKey? sshPublicKey;

  /// UserPassword.
  final UserPassword? userPassword;

  /// Creates a new [AuthConfig].
  /// [additionalVariables] List containing additional auth configs.
  /// [authKey] Identifier key for auth config
  /// [authType] The type of authentication configured.
  /// [oauth2AuthCodeFlow] Oauth2AuthCodeFlow.
  /// [oauth2ClientCredentials] Oauth2ClientCredentials.
  /// [oauth2JwtBearer] Oauth2JwtBearer.
  /// [sshPublicKey] SSH Public Key.
  /// [userPassword] UserPassword.
  AuthConfig({
    this.additionalVariables,
    this.authKey,
    this.authType,
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
      map['additionalVariables'] =
          pulumi.Input.encodeList<ConfigVariable, Map<String, dynamic>>(
              additionalVariablesValue, (value) => value.toMap());
    }
    final authKeyValue = authKey;
    if (authKeyValue != null) {
      map['authKey'] = authKeyValue;
    }
    final authTypeValue = authType;
    if (authTypeValue != null) {
      map['authType'] = authTypeValue.value;
    }
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

  factory AuthConfig.fromMap(Map<String, dynamic> map) {
    return AuthConfig(
      additionalVariables: map['additionalVariables'] == null
          ? null
          : pulumi.Input.decodeList<ConfigVariable>(
              map['additionalVariables'],
              (value) => ConfigVariable.fromMap(
                  (value as Map).cast<String, dynamic>())),
      authKey: map['authKey'] == null ? null : map['authKey'] as String,
      authType: map['authType'] == null
          ? null
          : AuthConfigAuthType.fromValue(map['authType'] as String),
      oauth2AuthCodeFlow: map['oauth2AuthCodeFlow'] == null
          ? null
          : Oauth2AuthCodeFlow.fromMap(
              (map['oauth2AuthCodeFlow'] as Map).cast<String, dynamic>()),
      oauth2ClientCredentials: map['oauth2ClientCredentials'] == null
          ? null
          : Oauth2ClientCredentials.fromMap(
              (map['oauth2ClientCredentials'] as Map).cast<String, dynamic>()),
      oauth2JwtBearer: map['oauth2JwtBearer'] == null
          ? null
          : Oauth2JwtBearer.fromMap(
              (map['oauth2JwtBearer'] as Map).cast<String, dynamic>()),
      sshPublicKey: map['sshPublicKey'] == null
          ? null
          : SshPublicKey.fromMap(
              (map['sshPublicKey'] as Map).cast<String, dynamic>()),
      userPassword: map['userPassword'] == null
          ? null
          : UserPassword.fromMap(
              (map['userPassword'] as Map).cast<String, dynamic>()),
    );
  }
}
