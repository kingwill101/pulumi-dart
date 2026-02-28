// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_auth_token.dart';
import 'google_cloud_integrations_v1alpha_credential_credential_type.dart';
import 'google_cloud_integrations_v1alpha_jwt.dart';
import 'google_cloud_integrations_v1alpha_oauth2_authorization_code.dart';
import 'google_cloud_integrations_v1alpha_oauth2_client_credentials.dart';
import 'google_cloud_integrations_v1alpha_oauth2_resource_owner_credentials.dart';
import 'google_cloud_integrations_v1alpha_oidc_token.dart';
import 'google_cloud_integrations_v1alpha_service_account_credentials.dart';
import 'google_cloud_integrations_v1alpha_username_and_password.dart';

/// Defines parameters for a single, canonical credential.
class GoogleCloudIntegrationsV1alphaCredential {
  /// Auth token credential
  final GoogleCloudIntegrationsV1alphaAuthToken? authToken;

  /// Credential type associated with auth config.
  final GoogleCloudIntegrationsV1alphaCredentialCredentialType? credentialType;

  /// JWT credential
  final GoogleCloudIntegrationsV1alphaJwt? jwt;

  /// The api_key and oauth2_implicit are not covered in v1 and will be picked up once v1 is implemented. ApiKey api_key = 3; OAuth2 authorization code credential
  final GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode?
      oauth2AuthorizationCode;

  /// OAuth2Implicit oauth2_implicit = 5; OAuth2 client credentials
  final GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials?
      oauth2ClientCredentials;

  /// OAuth2 resource owner credentials
  final GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials?
      oauth2ResourceOwnerCredentials;

  /// Google OIDC ID Token
  final GoogleCloudIntegrationsV1alphaOidcToken? oidcToken;

  /// Service account credential
  final GoogleCloudIntegrationsV1alphaServiceAccountCredentials?
      serviceAccountCredentials;

  /// Username and password credential
  final GoogleCloudIntegrationsV1alphaUsernameAndPassword? usernameAndPassword;

  /// Creates a new [GoogleCloudIntegrationsV1alphaCredential].
  /// [authToken] Auth token credential
  /// [credentialType] Credential type associated with auth config.
  /// [jwt] JWT credential
  /// [oauth2AuthorizationCode] The api_key and oauth2_implicit are not covered in v1 and will be picked up once v1 is implemented. ApiKey api_key = 3; OAuth2 authorization code credential
  /// [oauth2ClientCredentials] OAuth2Implicit oauth2_implicit = 5; OAuth2 client credentials
  /// [oauth2ResourceOwnerCredentials] OAuth2 resource owner credentials
  /// [oidcToken] Google OIDC ID Token
  /// [serviceAccountCredentials] Service account credential
  /// [usernameAndPassword] Username and password credential
  GoogleCloudIntegrationsV1alphaCredential({
    this.authToken,
    this.credentialType,
    this.jwt,
    this.oauth2AuthorizationCode,
    this.oauth2ClientCredentials,
    this.oauth2ResourceOwnerCredentials,
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
    final credentialTypeValue = credentialType;
    if (credentialTypeValue != null) {
      map['credentialType'] = credentialTypeValue.value;
    }
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
    final oauth2ResourceOwnerCredentialsValue = oauth2ResourceOwnerCredentials;
    if (oauth2ResourceOwnerCredentialsValue != null) {
      map['oauth2ResourceOwnerCredentials'] =
          oauth2ResourceOwnerCredentialsValue.toMap();
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

  factory GoogleCloudIntegrationsV1alphaCredential.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaCredential(
      authToken: map['authToken'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaAuthToken.fromMap(
              (map['authToken'] as Map).cast<String, dynamic>()),
      credentialType: map['credentialType'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaCredentialCredentialType.fromValue(
              map['credentialType'] as String),
      jwt: map['jwt'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaJwt.fromMap(
              (map['jwt'] as Map).cast<String, dynamic>()),
      oauth2AuthorizationCode: map['oauth2AuthorizationCode'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode.fromMap(
              (map['oauth2AuthorizationCode'] as Map).cast<String, dynamic>()),
      oauth2ClientCredentials: map['oauth2ClientCredentials'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials.fromMap(
              (map['oauth2ClientCredentials'] as Map).cast<String, dynamic>()),
      oauth2ResourceOwnerCredentials:
          map['oauth2ResourceOwnerCredentials'] == null
              ? null
              : GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials
                  .fromMap((map['oauth2ResourceOwnerCredentials'] as Map)
                      .cast<String, dynamic>()),
      oidcToken: map['oidcToken'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaOidcToken.fromMap(
              (map['oidcToken'] as Map).cast<String, dynamic>()),
      serviceAccountCredentials: map['serviceAccountCredentials'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaServiceAccountCredentials.fromMap(
              (map['serviceAccountCredentials'] as Map)
                  .cast<String, dynamic>()),
      usernameAndPassword: map['usernameAndPassword'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaUsernameAndPassword.fromMap(
              (map['usernameAndPassword'] as Map).cast<String, dynamic>()),
    );
  }
}
