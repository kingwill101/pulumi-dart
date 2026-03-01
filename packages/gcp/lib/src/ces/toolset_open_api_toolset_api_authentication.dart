// ignore_for_file: unused_element, unnecessary_cast

import 'toolset_open_api_toolset_api_authentication_api_key_config.dart';
import 'toolset_open_api_toolset_api_authentication_bearer_token_config.dart';
import 'toolset_open_api_toolset_api_authentication_oauth_config.dart';
import 'toolset_open_api_toolset_api_authentication_service_account_auth_config.dart';

class ToolsetOpenApiToolsetApiAuthentication {
  /// Configurations for authentication with API key.
  /// Structure is documented below.
  final ToolsetOpenApiToolsetApiAuthenticationApiKeyConfig? apiKeyConfig;

  /// Configurations for authentication with a bearer token.
  /// Structure is documented below.
  final ToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig?
  bearerTokenConfig;

  /// Configurations for authentication with OAuth.
  /// Structure is documented below.
  final ToolsetOpenApiToolsetApiAuthenticationOauthConfig? oauthConfig;

  /// Configurations for authentication using a custom service account.
  /// Structure is documented below.
  final ToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig?
  serviceAccountAuthConfig;

  /// Configurations for authentication with [ID
  /// token](https://cloud.google.com/docs/authentication/token-types#id) generated
  /// from service agent.
  final Map<String, dynamic>? serviceAgentIdTokenAuthConfig;

  /// Creates a new [ToolsetOpenApiToolsetApiAuthentication].
  /// [apiKeyConfig] Configurations for authentication with API key.
  /// [bearerTokenConfig] Configurations for authentication with a bearer token.
  /// [oauthConfig] Configurations for authentication with OAuth.
  /// [serviceAccountAuthConfig] Configurations for authentication using a custom service account.
  /// [serviceAgentIdTokenAuthConfig] Configurations for authentication with [ID
  ToolsetOpenApiToolsetApiAuthentication({
    this.apiKeyConfig,
    this.bearerTokenConfig,
    this.oauthConfig,
    this.serviceAccountAuthConfig,
    this.serviceAgentIdTokenAuthConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyConfig': ?apiKeyConfig == null ? null : apiKeyConfig!.toMap(),
      'bearerTokenConfig': ?bearerTokenConfig == null
          ? null
          : bearerTokenConfig!.toMap(),
      'oauthConfig': ?oauthConfig == null ? null : oauthConfig!.toMap(),
      'serviceAccountAuthConfig': ?serviceAccountAuthConfig == null
          ? null
          : serviceAccountAuthConfig!.toMap(),
      'serviceAgentIdTokenAuthConfig': ?serviceAgentIdTokenAuthConfig,
    };
  }

  factory ToolsetOpenApiToolsetApiAuthentication.fromMap(
    Map<String, dynamic> map,
  ) {
    return ToolsetOpenApiToolsetApiAuthentication(
      apiKeyConfig: map['apiKeyConfig'] == null
          ? null
          : ToolsetOpenApiToolsetApiAuthenticationApiKeyConfig.fromMap(
              (map['apiKeyConfig'] as Map).cast<String, dynamic>(),
            ),
      bearerTokenConfig: map['bearerTokenConfig'] == null
          ? null
          : ToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig.fromMap(
              (map['bearerTokenConfig'] as Map).cast<String, dynamic>(),
            ),
      oauthConfig: map['oauthConfig'] == null
          ? null
          : ToolsetOpenApiToolsetApiAuthenticationOauthConfig.fromMap(
              (map['oauthConfig'] as Map).cast<String, dynamic>(),
            ),
      serviceAccountAuthConfig: map['serviceAccountAuthConfig'] == null
          ? null
          : ToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig.fromMap(
              (map['serviceAccountAuthConfig'] as Map).cast<String, dynamic>(),
            ),
      serviceAgentIdTokenAuthConfig:
          map['serviceAgentIdTokenAuthConfig'] == null
          ? null
          : (map['serviceAgentIdTokenAuthConfig'] as Map)
                .cast<String, dynamic>(),
    );
  }
}
