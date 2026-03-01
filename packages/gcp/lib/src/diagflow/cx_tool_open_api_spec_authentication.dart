// ignore_for_file: unused_element, unnecessary_cast

import 'cx_tool_open_api_spec_authentication_api_key_config.dart';
import 'cx_tool_open_api_spec_authentication_bearer_token_config.dart';
import 'cx_tool_open_api_spec_authentication_oauth_config.dart';
import 'cx_tool_open_api_spec_authentication_service_agent_auth_config.dart';

class CxToolOpenApiSpecAuthentication {
  /// Config for API key auth.
  /// This field is part of a union field `auth_config`: Only one of `apiKeyConfig`, `oauthConfig`, `serviceAgentAuthConfig`, or `bearerTokenConfig` may be set.
  /// Structure is documented below.
  final CxToolOpenApiSpecAuthenticationApiKeyConfig? apiKeyConfig;

  /// Config for bearer token auth.
  /// This field is part of a union field `auth_config`: Only one of `apiKeyConfig`, `oauthConfig`, `serviceAgentAuthConfig`, or `bearerTokenConfig` may be set.
  /// Structure is documented below.
  final CxToolOpenApiSpecAuthenticationBearerTokenConfig? bearerTokenConfig;

  /// Config for OAuth.
  /// This field is part of a union field `auth_config`: Only one of `apiKeyConfig`, `oauthConfig`, `serviceAgentAuthConfig`, or `bearerTokenConfig` may be set.
  /// Structure is documented below.
  final CxToolOpenApiSpecAuthenticationOauthConfig? oauthConfig;

  /// Config for [Diglogflow service agent](https://cloud.google.com/iam/docs/service-agents#dialogflow-service-agent) auth.
  /// This field is part of a union field `auth_config`: Only one of `apiKeyConfig`, `oauthConfig`, `serviceAgentAuthConfig`, or `bearerTokenConfig` may be set.
  /// Structure is documented below.
  final CxToolOpenApiSpecAuthenticationServiceAgentAuthConfig?
  serviceAgentAuthConfig;

  /// Creates a new [CxToolOpenApiSpecAuthentication].
  /// [apiKeyConfig] Config for API key auth.
  /// [bearerTokenConfig] Config for bearer token auth.
  /// [oauthConfig] Config for OAuth.
  /// [serviceAgentAuthConfig] Config for [Diglogflow service agent](https://cloud.google.com/iam/docs/service-agents#dialogflow-service-agent) auth.
  CxToolOpenApiSpecAuthentication({
    this.apiKeyConfig,
    this.bearerTokenConfig,
    this.oauthConfig,
    this.serviceAgentAuthConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyConfig': ?apiKeyConfig == null ? null : apiKeyConfig!.toMap(),
      'bearerTokenConfig': ?bearerTokenConfig == null
          ? null
          : bearerTokenConfig!.toMap(),
      'oauthConfig': ?oauthConfig == null ? null : oauthConfig!.toMap(),
      'serviceAgentAuthConfig': ?serviceAgentAuthConfig == null
          ? null
          : serviceAgentAuthConfig!.toMap(),
    };
  }

  factory CxToolOpenApiSpecAuthentication.fromMap(Map<String, dynamic> map) {
    return CxToolOpenApiSpecAuthentication(
      apiKeyConfig: map['apiKeyConfig'] == null
          ? null
          : CxToolOpenApiSpecAuthenticationApiKeyConfig.fromMap(
              (map['apiKeyConfig'] as Map).cast<String, dynamic>(),
            ),
      bearerTokenConfig: map['bearerTokenConfig'] == null
          ? null
          : CxToolOpenApiSpecAuthenticationBearerTokenConfig.fromMap(
              (map['bearerTokenConfig'] as Map).cast<String, dynamic>(),
            ),
      oauthConfig: map['oauthConfig'] == null
          ? null
          : CxToolOpenApiSpecAuthenticationOauthConfig.fromMap(
              (map['oauthConfig'] as Map).cast<String, dynamic>(),
            ),
      serviceAgentAuthConfig: map['serviceAgentAuthConfig'] == null
          ? null
          : CxToolOpenApiSpecAuthenticationServiceAgentAuthConfig.fromMap(
              (map['serviceAgentAuthConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
