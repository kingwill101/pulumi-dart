// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_variable_response.dart';
import 'oauth2_auth_code_flow_response.dart';
import 'oauth2_client_credentials_response.dart';
import 'oauth2_jwt_bearer_response.dart';
import 'ssh_public_key_response.dart';
import 'user_password_response.dart';

/// AuthConfig defines details of a authentication type.
class AuthConfigResponse {
  /// List containing additional auth configs.
  final List<ConfigVariableResponse> additionalVariables;

  /// Identifier key for auth config
  final String authKey;

  /// The type of authentication configured.
  final String authType;

  /// Oauth2AuthCodeFlow.
  final Oauth2AuthCodeFlowResponse oauth2AuthCodeFlow;

  /// Oauth2ClientCredentials.
  final Oauth2ClientCredentialsResponse oauth2ClientCredentials;

  /// Oauth2JwtBearer.
  final Oauth2JwtBearerResponse oauth2JwtBearer;

  /// SSH Public Key.
  final SshPublicKeyResponse sshPublicKey;

  /// UserPassword.
  final UserPasswordResponse userPassword;

  /// Creates a new [AuthConfigResponse].
  /// [additionalVariables] List containing additional auth configs.
  /// [authKey] Identifier key for auth config
  /// [authType] The type of authentication configured.
  /// [oauth2AuthCodeFlow] Oauth2AuthCodeFlow.
  /// [oauth2ClientCredentials] Oauth2ClientCredentials.
  /// [oauth2JwtBearer] Oauth2JwtBearer.
  /// [sshPublicKey] SSH Public Key.
  /// [userPassword] UserPassword.
  AuthConfigResponse({
    required this.additionalVariables,
    required this.authKey,
    required this.authType,
    required this.oauth2AuthCodeFlow,
    required this.oauth2ClientCredentials,
    required this.oauth2JwtBearer,
    required this.sshPublicKey,
    required this.userPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalVariables':
          pulumi.Input.encodeList<ConfigVariableResponse, Map<String, dynamic>>(
            additionalVariables,
            (value) => value.toMap(),
          ),
      'authKey': authKey,
      'authType': authType,
      'oauth2AuthCodeFlow': oauth2AuthCodeFlow.toMap(),
      'oauth2ClientCredentials': oauth2ClientCredentials.toMap(),
      'oauth2JwtBearer': oauth2JwtBearer.toMap(),
      'sshPublicKey': sshPublicKey.toMap(),
      'userPassword': userPassword.toMap(),
    };
  }

  factory AuthConfigResponse.fromMap(Map<String, dynamic> map) {
    return AuthConfigResponse(
      additionalVariables: pulumi.Input.decodeList<ConfigVariableResponse>(
        map['additionalVariables'],
        (value) => ConfigVariableResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      authKey: map['authKey'] as String,
      authType: map['authType'] as String,
      oauth2AuthCodeFlow: Oauth2AuthCodeFlowResponse.fromMap(
        (map['oauth2AuthCodeFlow'] as Map).cast<String, dynamic>(),
      ),
      oauth2ClientCredentials: Oauth2ClientCredentialsResponse.fromMap(
        (map['oauth2ClientCredentials'] as Map).cast<String, dynamic>(),
      ),
      oauth2JwtBearer: Oauth2JwtBearerResponse.fromMap(
        (map['oauth2JwtBearer'] as Map).cast<String, dynamic>(),
      ),
      sshPublicKey: SshPublicKeyResponse.fromMap(
        (map['sshPublicKey'] as Map).cast<String, dynamic>(),
      ),
      userPassword: UserPasswordResponse.fromMap(
        (map['userPassword'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
