// ignore_for_file: unused_element, unnecessary_cast

import '../auth_config_decrypted_credential_auth_token/auth_config_decrypted_credential_auth_token.dart';
import '../auth_config_decrypted_credential_jwt/auth_config_decrypted_credential_jwt.dart';
import '../auth_config_decrypted_credential_oauth2_authorization_code/auth_config_decrypted_credential_oauth2_authorization_code.dart';
import '../auth_config_decrypted_credential_oauth2_client_credentials/auth_config_decrypted_credential_oauth2_client_credentials.dart';
import '../auth_config_decrypted_credential_oidc_token/auth_config_decrypted_credential_oidc_token.dart';
import '../auth_config_decrypted_credential_service_account_credentials/auth_config_decrypted_credential_service_account_credentials.dart';
import '../auth_config_decrypted_credential_username_and_password/auth_config_decrypted_credential_username_and_password.dart';

class AuthConfigDecryptedCredential {
  /// Auth token credential.
  /// Structure is documented below.
  final AuthConfigDecryptedCredentialAuthToken? authToken;

  /// Credential type associated with auth configs.
  final String credentialType;

  /// JWT credential.
  /// Structure is documented below.
  final AuthConfigDecryptedCredentialJwt? jwt;

  /// OAuth2 authorization code credential.
  /// Structure is documented below.
  final AuthConfigDecryptedCredentialOauth2AuthorizationCode?
      oauth2AuthorizationCode;

  /// OAuth2 client credentials.
  /// Structure is documented below.
  final AuthConfigDecryptedCredentialOauth2ClientCredentials?
      oauth2ClientCredentials;

  /// Google OIDC ID Token.
  /// Structure is documented below.
  final AuthConfigDecryptedCredentialOidcToken? oidcToken;

  /// Service account credential.
  /// Structure is documented below.
  final AuthConfigDecryptedCredentialServiceAccountCredentials?
      serviceAccountCredentials;

  /// Username and password credential.
  /// Structure is documented below.
  final AuthConfigDecryptedCredentialUsernameAndPassword? usernameAndPassword;

  AuthConfigDecryptedCredential({
    this.authToken,
    required this.credentialType,
    this.jwt,
    this.oauth2AuthorizationCode,
    this.oauth2ClientCredentials,
    this.oidcToken,
    this.serviceAccountCredentials,
    this.usernameAndPassword,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authTokenValue = authToken;
    if (authTokenValue != null) {
      map['authToken'] = authTokenValue.toMap();
    }
    map['credentialType'] = credentialType;
    final jwtValue = jwt;
    if (jwtValue != null) {
      map['jwt'] = jwtValue.toMap();
    }
    final oauth2AuthorizationCodeValue = oauth2AuthorizationCode;
    if (oauth2AuthorizationCodeValue != null) {
      map['oauth2AuthorizationCode'] = oauth2AuthorizationCodeValue.toMap();
    }
    final oauth2ClientCredentialsValue = oauth2ClientCredentials;
    if (oauth2ClientCredentialsValue != null) {
      map['oauth2ClientCredentials'] = oauth2ClientCredentialsValue.toMap();
    }
    final oidcTokenValue = oidcToken;
    if (oidcTokenValue != null) {
      map['oidcToken'] = oidcTokenValue.toMap();
    }
    final serviceAccountCredentialsValue = serviceAccountCredentials;
    if (serviceAccountCredentialsValue != null) {
      map['serviceAccountCredentials'] = serviceAccountCredentialsValue.toMap();
    }
    final usernameAndPasswordValue = usernameAndPassword;
    if (usernameAndPasswordValue != null) {
      map['usernameAndPassword'] = usernameAndPasswordValue.toMap();
    }
    return map;
  }

  factory AuthConfigDecryptedCredential.fromMap(Map<String, dynamic> map) {
    return AuthConfigDecryptedCredential(
      authToken: map['authToken'] == null
          ? null
          : AuthConfigDecryptedCredentialAuthToken.fromMap(
              (map['authToken'] as Map).cast<String, dynamic>()),
      credentialType: map['credentialType'] as String,
      jwt: map['jwt'] == null
          ? null
          : AuthConfigDecryptedCredentialJwt.fromMap(
              (map['jwt'] as Map).cast<String, dynamic>()),
      oauth2AuthorizationCode: map['oauth2AuthorizationCode'] == null
          ? null
          : AuthConfigDecryptedCredentialOauth2AuthorizationCode.fromMap(
              (map['oauth2AuthorizationCode'] as Map).cast<String, dynamic>()),
      oauth2ClientCredentials: map['oauth2ClientCredentials'] == null
          ? null
          : AuthConfigDecryptedCredentialOauth2ClientCredentials.fromMap(
              (map['oauth2ClientCredentials'] as Map).cast<String, dynamic>()),
      oidcToken: map['oidcToken'] == null
          ? null
          : AuthConfigDecryptedCredentialOidcToken.fromMap(
              (map['oidcToken'] as Map).cast<String, dynamic>()),
      serviceAccountCredentials: map['serviceAccountCredentials'] == null
          ? null
          : AuthConfigDecryptedCredentialServiceAccountCredentials.fromMap(
              (map['serviceAccountCredentials'] as Map)
                  .cast<String, dynamic>()),
      usernameAndPassword: map['usernameAndPassword'] == null
          ? null
          : AuthConfigDecryptedCredentialUsernameAndPassword.fromMap(
              (map['usernameAndPassword'] as Map).cast<String, dynamic>()),
    );
  }
}
