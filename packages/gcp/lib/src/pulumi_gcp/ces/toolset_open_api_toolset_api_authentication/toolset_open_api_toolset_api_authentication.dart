// ignore_for_file: unused_element, unnecessary_cast

import '../toolset_open_api_toolset_api_authentication_api_key_config/toolset_open_api_toolset_api_authentication_api_key_config.dart';
import '../toolset_open_api_toolset_api_authentication_bearer_token_config/toolset_open_api_toolset_api_authentication_bearer_token_config.dart';
import '../toolset_open_api_toolset_api_authentication_oauth_config/toolset_open_api_toolset_api_authentication_oauth_config.dart';
import '../toolset_open_api_toolset_api_authentication_service_account_auth_config/toolset_open_api_toolset_api_authentication_service_account_auth_config.dart';

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

  ToolsetOpenApiToolsetApiAuthentication({
    this.apiKeyConfig,
    this.bearerTokenConfig,
    this.oauthConfig,
    this.serviceAccountAuthConfig,
    this.serviceAgentIdTokenAuthConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiKeyConfigValue = apiKeyConfig;
    if (apiKeyConfigValue != null) {
      map['apiKeyConfig'] = apiKeyConfigValue.toMap();
    }
    final bearerTokenConfigValue = bearerTokenConfig;
    if (bearerTokenConfigValue != null) {
      map['bearerTokenConfig'] = bearerTokenConfigValue.toMap();
    }
    final oauthConfigValue = oauthConfig;
    if (oauthConfigValue != null) {
      map['oauthConfig'] = oauthConfigValue.toMap();
    }
    final serviceAccountAuthConfigValue = serviceAccountAuthConfig;
    if (serviceAccountAuthConfigValue != null) {
      map['serviceAccountAuthConfig'] = serviceAccountAuthConfigValue.toMap();
    }
    final serviceAgentIdTokenAuthConfigValue = serviceAgentIdTokenAuthConfig;
    if (serviceAgentIdTokenAuthConfigValue != null) {
      map['serviceAgentIdTokenAuthConfig'] = serviceAgentIdTokenAuthConfigValue;
    }
    return map;
  }

  factory ToolsetOpenApiToolsetApiAuthentication.fromMap(
      Map<String, dynamic> map) {
    return ToolsetOpenApiToolsetApiAuthentication(
      apiKeyConfig: map['apiKeyConfig'] == null
          ? null
          : ToolsetOpenApiToolsetApiAuthenticationApiKeyConfig.fromMap(
              (map['apiKeyConfig'] as Map).cast<String, dynamic>()),
      bearerTokenConfig: map['bearerTokenConfig'] == null
          ? null
          : ToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig.fromMap(
              (map['bearerTokenConfig'] as Map).cast<String, dynamic>()),
      oauthConfig: map['oauthConfig'] == null
          ? null
          : ToolsetOpenApiToolsetApiAuthenticationOauthConfig.fromMap(
              (map['oauthConfig'] as Map).cast<String, dynamic>()),
      serviceAccountAuthConfig: map['serviceAccountAuthConfig'] == null
          ? null
          : ToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig
              .fromMap((map['serviceAccountAuthConfig'] as Map)
                  .cast<String, dynamic>()),
      serviceAgentIdTokenAuthConfig:
          map['serviceAgentIdTokenAuthConfig'] == null
              ? null
              : (map['serviceAgentIdTokenAuthConfig'] as Map)
                  .cast<String, dynamic>(),
    );
  }
}
