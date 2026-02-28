// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_auth_token_response.dart';
import 'google_cloud_integrations_v1alpha_jwt_response.dart';
import 'google_cloud_integrations_v1alpha_oauth2_authorization_code_response.dart';
import 'google_cloud_integrations_v1alpha_oauth2_client_credentials_response.dart';
import 'google_cloud_integrations_v1alpha_oauth2_resource_owner_credentials_response.dart';
import 'google_cloud_integrations_v1alpha_oidc_token_response.dart';
import 'google_cloud_integrations_v1alpha_service_account_credentials_response.dart';
import 'google_cloud_integrations_v1alpha_username_and_password_response.dart';

/// Defines parameters for a single, canonical credential.
class GoogleCloudIntegrationsV1alphaCredentialResponse {
  /// Auth token credential
  final GoogleCloudIntegrationsV1alphaAuthTokenResponse authToken;

  /// Credential type associated with auth config.
  final String credentialType;

  /// JWT credential
  final GoogleCloudIntegrationsV1alphaJwtResponse jwt;

  /// The api_key and oauth2_implicit are not covered in v1 and will be picked up once v1 is implemented. ApiKey api_key = 3; OAuth2 authorization code credential
  final GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCodeResponse
      oauth2AuthorizationCode;

  /// OAuth2Implicit oauth2_implicit = 5; OAuth2 client credentials
  final GoogleCloudIntegrationsV1alphaOAuth2ClientCredentialsResponse
      oauth2ClientCredentials;

  /// OAuth2 resource owner credentials
  final GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentialsResponse
      oauth2ResourceOwnerCredentials;

  /// Google OIDC ID Token
  final GoogleCloudIntegrationsV1alphaOidcTokenResponse oidcToken;

  /// Service account credential
  final GoogleCloudIntegrationsV1alphaServiceAccountCredentialsResponse
      serviceAccountCredentials;

  /// Username and password credential
  final GoogleCloudIntegrationsV1alphaUsernameAndPasswordResponse
      usernameAndPassword;

  /// Creates a new [GoogleCloudIntegrationsV1alphaCredentialResponse].
  /// [authToken] Auth token credential
  /// [credentialType] Credential type associated with auth config.
  /// [jwt] JWT credential
  /// [oauth2AuthorizationCode] The api_key and oauth2_implicit are not covered in v1 and will be picked up once v1 is implemented. ApiKey api_key = 3; OAuth2 authorization code credential
  /// [oauth2ClientCredentials] OAuth2Implicit oauth2_implicit = 5; OAuth2 client credentials
  /// [oauth2ResourceOwnerCredentials] OAuth2 resource owner credentials
  /// [oidcToken] Google OIDC ID Token
  /// [serviceAccountCredentials] Service account credential
  /// [usernameAndPassword] Username and password credential
  GoogleCloudIntegrationsV1alphaCredentialResponse({
    required this.authToken,
    required this.credentialType,
    required this.jwt,
    required this.oauth2AuthorizationCode,
    required this.oauth2ClientCredentials,
    required this.oauth2ResourceOwnerCredentials,
    required this.oidcToken,
    required this.serviceAccountCredentials,
    required this.usernameAndPassword,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authToken'] = authToken.toMap();
    map['credentialType'] = credentialType;
    map['jwt'] = jwt.toMap();
    map['oauth2AuthorizationCode'] = oauth2AuthorizationCode.toMap();
    map['oauth2ClientCredentials'] = oauth2ClientCredentials.toMap();
    map['oauth2ResourceOwnerCredentials'] =
        oauth2ResourceOwnerCredentials.toMap();
    map['oidcToken'] = oidcToken.toMap();
    map['serviceAccountCredentials'] = serviceAccountCredentials.toMap();
    map['usernameAndPassword'] = usernameAndPassword.toMap();
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaCredentialResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaCredentialResponse(
      authToken: GoogleCloudIntegrationsV1alphaAuthTokenResponse.fromMap(
          (map['authToken'] as Map).cast<String, dynamic>()),
      credentialType: map['credentialType'] as String,
      jwt: GoogleCloudIntegrationsV1alphaJwtResponse.fromMap(
          (map['jwt'] as Map).cast<String, dynamic>()),
      oauth2AuthorizationCode:
          GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCodeResponse.fromMap(
              (map['oauth2AuthorizationCode'] as Map).cast<String, dynamic>()),
      oauth2ClientCredentials:
          GoogleCloudIntegrationsV1alphaOAuth2ClientCredentialsResponse.fromMap(
              (map['oauth2ClientCredentials'] as Map).cast<String, dynamic>()),
      oauth2ResourceOwnerCredentials:
          GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentialsResponse
              .fromMap((map['oauth2ResourceOwnerCredentials'] as Map)
                  .cast<String, dynamic>()),
      oidcToken: GoogleCloudIntegrationsV1alphaOidcTokenResponse.fromMap(
          (map['oidcToken'] as Map).cast<String, dynamic>()),
      serviceAccountCredentials:
          GoogleCloudIntegrationsV1alphaServiceAccountCredentialsResponse
              .fromMap((map['serviceAccountCredentials'] as Map)
                  .cast<String, dynamic>()),
      usernameAndPassword:
          GoogleCloudIntegrationsV1alphaUsernameAndPasswordResponse.fromMap(
              (map['usernameAndPassword'] as Map).cast<String, dynamic>()),
    );
  }
}
