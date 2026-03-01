// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_open_api_tool_api_authentication_api_key_config.dart';
import 'tool_open_api_tool_api_authentication_bearer_token_config.dart';
import 'tool_open_api_tool_api_authentication_oauth_config.dart';
import 'tool_open_api_tool_api_authentication_service_account_auth_config.dart';

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

  /// Creates a new [ToolOpenApiToolApiAuthentication].
  /// [apiKeyConfigs] (Output)
  /// [bearerTokenConfigs] (Output)
  /// [oauthConfigs] (Output)
  /// [serviceAccountAuthConfigs] (Output)
  /// [serviceAgentIdTokenAuthConfigs] (Output)
  ToolOpenApiToolApiAuthentication({
    this.apiKeyConfigs,
    this.bearerTokenConfigs,
    this.oauthConfigs,
    this.serviceAccountAuthConfigs,
    this.serviceAgentIdTokenAuthConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyConfigs': ?apiKeyConfigs == null
          ? null
          : pulumi.Input.encodeList<
              ToolOpenApiToolApiAuthenticationApiKeyConfig,
              Map<String, dynamic>
            >(apiKeyConfigs!, (value) => value.toMap()),
      'bearerTokenConfigs': ?bearerTokenConfigs == null
          ? null
          : pulumi.Input.encodeList<
              ToolOpenApiToolApiAuthenticationBearerTokenConfig,
              Map<String, dynamic>
            >(bearerTokenConfigs!, (value) => value.toMap()),
      'oauthConfigs': ?oauthConfigs == null
          ? null
          : pulumi.Input.encodeList<
              ToolOpenApiToolApiAuthenticationOauthConfig,
              Map<String, dynamic>
            >(oauthConfigs!, (value) => value.toMap()),
      'serviceAccountAuthConfigs': ?serviceAccountAuthConfigs == null
          ? null
          : pulumi.Input.encodeList<
              ToolOpenApiToolApiAuthenticationServiceAccountAuthConfig,
              Map<String, dynamic>
            >(serviceAccountAuthConfigs!, (value) => value.toMap()),
      'serviceAgentIdTokenAuthConfigs': ?serviceAgentIdTokenAuthConfigs,
    };
  }

  factory ToolOpenApiToolApiAuthentication.fromMap(Map<String, dynamic> map) {
    return ToolOpenApiToolApiAuthentication(
      apiKeyConfigs: map['apiKeyConfigs'] == null
          ? null
          : pulumi
                .Input.decodeList<ToolOpenApiToolApiAuthenticationApiKeyConfig>(
              map['apiKeyConfigs'],
              (value) => ToolOpenApiToolApiAuthenticationApiKeyConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      bearerTokenConfigs: map['bearerTokenConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              ToolOpenApiToolApiAuthenticationBearerTokenConfig
            >(
              map['bearerTokenConfigs'],
              (value) =>
                  ToolOpenApiToolApiAuthenticationBearerTokenConfig.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      oauthConfigs: map['oauthConfigs'] == null
          ? null
          : pulumi
                .Input.decodeList<ToolOpenApiToolApiAuthenticationOauthConfig>(
              map['oauthConfigs'],
              (value) => ToolOpenApiToolApiAuthenticationOauthConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      serviceAccountAuthConfigs: map['serviceAccountAuthConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              ToolOpenApiToolApiAuthenticationServiceAccountAuthConfig
            >(
              map['serviceAccountAuthConfigs'],
              (value) =>
                  ToolOpenApiToolApiAuthenticationServiceAccountAuthConfig.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      serviceAgentIdTokenAuthConfigs:
          map['serviceAgentIdTokenAuthConfigs'] == null
          ? null
          : (map['serviceAgentIdTokenAuthConfigs'] as List)
                .cast<Map<String, dynamic>>(),
    );
  }
}
