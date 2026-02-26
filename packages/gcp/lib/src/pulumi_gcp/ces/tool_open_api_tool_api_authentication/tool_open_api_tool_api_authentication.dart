// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../tool_open_api_tool_api_authentication_api_key_config/tool_open_api_tool_api_authentication_api_key_config.dart';
import '../tool_open_api_tool_api_authentication_bearer_token_config/tool_open_api_tool_api_authentication_bearer_token_config.dart';
import '../tool_open_api_tool_api_authentication_oauth_config/tool_open_api_tool_api_authentication_oauth_config.dart';
import '../tool_open_api_tool_api_authentication_service_account_auth_config/tool_open_api_tool_api_authentication_service_account_auth_config.dart';

class ToolOpenApiToolApiAuthentication {
  /// (Output)
  /// Configurations for authentication with API key.
  /// Structure is documented below.
  final List<ToolOpenApiToolApiAuthenticationApiKeyConfig>? apiKeyConfigs;

  /// (Output)
  /// Configurations for authentication with a bearer token.
  /// Structure is documented below.
  final List<ToolOpenApiToolApiAuthenticationBearerTokenConfig>?
      bearerTokenConfigs;

  /// (Output)
  /// Configurations for authentication with OAuth.
  /// Structure is documented below.
  final List<ToolOpenApiToolApiAuthenticationOauthConfig>? oauthConfigs;

  /// (Output)
  /// Configurations for authentication using a custom service account.
  /// Structure is documented below.
  final List<ToolOpenApiToolApiAuthenticationServiceAccountAuthConfig>?
      serviceAccountAuthConfigs;

  /// (Output)
  /// Configurations for authentication with [ID
  /// token](https://cloud.google.com/docs/authentication/token-types#id) generated
  /// from service agent.
  final List<Map<String, dynamic>>? serviceAgentIdTokenAuthConfigs;

  ToolOpenApiToolApiAuthentication({
    this.apiKeyConfigs,
    this.bearerTokenConfigs,
    this.oauthConfigs,
    this.serviceAccountAuthConfigs,
    this.serviceAgentIdTokenAuthConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiKeyConfigsValue = apiKeyConfigs;
    if (apiKeyConfigsValue != null) {
      map['apiKeyConfigs'] = Input.encodeList<
          ToolOpenApiToolApiAuthenticationApiKeyConfig,
          Map<String, dynamic>>(apiKeyConfigsValue, (value) => value.toMap());
    }
    final bearerTokenConfigsValue = bearerTokenConfigs;
    if (bearerTokenConfigsValue != null) {
      map['bearerTokenConfigs'] = Input.encodeList<
              ToolOpenApiToolApiAuthenticationBearerTokenConfig,
              Map<String, dynamic>>(
          bearerTokenConfigsValue, (value) => value.toMap());
    }
    final oauthConfigsValue = oauthConfigs;
    if (oauthConfigsValue != null) {
      map['oauthConfigs'] = Input.encodeList<
          ToolOpenApiToolApiAuthenticationOauthConfig,
          Map<String, dynamic>>(oauthConfigsValue, (value) => value.toMap());
    }
    final serviceAccountAuthConfigsValue = serviceAccountAuthConfigs;
    if (serviceAccountAuthConfigsValue != null) {
      map['serviceAccountAuthConfigs'] = Input.encodeList<
              ToolOpenApiToolApiAuthenticationServiceAccountAuthConfig,
              Map<String, dynamic>>(
          serviceAccountAuthConfigsValue, (value) => value.toMap());
    }
    final serviceAgentIdTokenAuthConfigsValue = serviceAgentIdTokenAuthConfigs;
    if (serviceAgentIdTokenAuthConfigsValue != null) {
      map['serviceAgentIdTokenAuthConfigs'] =
          serviceAgentIdTokenAuthConfigsValue;
    }
    return map;
  }

  factory ToolOpenApiToolApiAuthentication.fromMap(Map<String, dynamic> map) {
    return ToolOpenApiToolApiAuthentication(
      apiKeyConfigs: map['apiKeyConfigs'] == null
          ? null
          : Input.decodeList<ToolOpenApiToolApiAuthenticationApiKeyConfig>(
              map['apiKeyConfigs'],
              (value) => ToolOpenApiToolApiAuthenticationApiKeyConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      bearerTokenConfigs: map['bearerTokenConfigs'] == null
          ? null
          : Input.decodeList<ToolOpenApiToolApiAuthenticationBearerTokenConfig>(
              map['bearerTokenConfigs'],
              (value) =>
                  ToolOpenApiToolApiAuthenticationBearerTokenConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
      oauthConfigs: map['oauthConfigs'] == null
          ? null
          : Input.decodeList<ToolOpenApiToolApiAuthenticationOauthConfig>(
              map['oauthConfigs'],
              (value) => ToolOpenApiToolApiAuthenticationOauthConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      serviceAccountAuthConfigs: map['serviceAccountAuthConfigs'] == null
          ? null
          : Input.decodeList<
                  ToolOpenApiToolApiAuthenticationServiceAccountAuthConfig>(
              map['serviceAccountAuthConfigs'],
              (value) =>
                  ToolOpenApiToolApiAuthenticationServiceAccountAuthConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      serviceAgentIdTokenAuthConfigs:
          map['serviceAgentIdTokenAuthConfigs'] == null
              ? null
              : (map['serviceAgentIdTokenAuthConfigs'] as List)
                  .cast<Map<String, dynamic>>(),
    );
  }
}
