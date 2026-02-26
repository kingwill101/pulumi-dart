// ignore_for_file: unused_element, unnecessary_cast

import '../cx_tool_open_api_spec_authentication_api_key_config/cx_tool_open_api_spec_authentication_api_key_config.dart';
import '../cx_tool_open_api_spec_authentication_bearer_token_config/cx_tool_open_api_spec_authentication_bearer_token_config.dart';
import '../cx_tool_open_api_spec_authentication_oauth_config/cx_tool_open_api_spec_authentication_oauth_config.dart';
import '../cx_tool_open_api_spec_authentication_service_agent_auth_config/cx_tool_open_api_spec_authentication_service_agent_auth_config.dart';

class CxToolOpenApiSpecAuthentication {
  /// Config for API key auth.
  /// This field is part of a union field <span pulumi-lang-nodejs="`authConfig`" pulumi-lang-dotnet="`AuthConfig`" pulumi-lang-go="`authConfig`" pulumi-lang-python="`auth_config`" pulumi-lang-yaml="`authConfig`" pulumi-lang-java="`authConfig`">`auth_config`</span>: Only one of `apiKeyConfig`, `oauthConfig`, `serviceAgentAuthConfig`, or `bearerTokenConfig` may be set.
  /// Structure is documented below.
  final CxToolOpenApiSpecAuthenticationApiKeyConfig? apiKeyConfig;

  /// Config for bearer token auth.
  /// This field is part of a union field <span pulumi-lang-nodejs="`authConfig`" pulumi-lang-dotnet="`AuthConfig`" pulumi-lang-go="`authConfig`" pulumi-lang-python="`auth_config`" pulumi-lang-yaml="`authConfig`" pulumi-lang-java="`authConfig`">`auth_config`</span>: Only one of `apiKeyConfig`, `oauthConfig`, `serviceAgentAuthConfig`, or `bearerTokenConfig` may be set.
  /// Structure is documented below.
  final CxToolOpenApiSpecAuthenticationBearerTokenConfig? bearerTokenConfig;

  /// Config for OAuth.
  /// This field is part of a union field <span pulumi-lang-nodejs="`authConfig`" pulumi-lang-dotnet="`AuthConfig`" pulumi-lang-go="`authConfig`" pulumi-lang-python="`auth_config`" pulumi-lang-yaml="`authConfig`" pulumi-lang-java="`authConfig`">`auth_config`</span>: Only one of `apiKeyConfig`, `oauthConfig`, `serviceAgentAuthConfig`, or `bearerTokenConfig` may be set.
  /// Structure is documented below.
  final CxToolOpenApiSpecAuthenticationOauthConfig? oauthConfig;

  /// Config for [Diglogflow service agent](https://cloud.google.com/iam/docs/service-agents#dialogflow-service-agent) auth.
  /// This field is part of a union field <span pulumi-lang-nodejs="`authConfig`" pulumi-lang-dotnet="`AuthConfig`" pulumi-lang-go="`authConfig`" pulumi-lang-python="`auth_config`" pulumi-lang-yaml="`authConfig`" pulumi-lang-java="`authConfig`">`auth_config`</span>: Only one of `apiKeyConfig`, `oauthConfig`, `serviceAgentAuthConfig`, or `bearerTokenConfig` may be set.
  /// Structure is documented below.
  final CxToolOpenApiSpecAuthenticationServiceAgentAuthConfig?
      serviceAgentAuthConfig;

  CxToolOpenApiSpecAuthentication({
    this.apiKeyConfig,
    this.bearerTokenConfig,
    this.oauthConfig,
    this.serviceAgentAuthConfig,
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
    final serviceAgentAuthConfigValue = serviceAgentAuthConfig;
    if (serviceAgentAuthConfigValue != null) {
      map['serviceAgentAuthConfig'] = serviceAgentAuthConfigValue.toMap();
    }
    return map;
  }

  factory CxToolOpenApiSpecAuthentication.fromMap(Map<String, dynamic> map) {
    return CxToolOpenApiSpecAuthentication(
      apiKeyConfig: map['apiKeyConfig'] == null
          ? null
          : CxToolOpenApiSpecAuthenticationApiKeyConfig.fromMap(
              (map['apiKeyConfig'] as Map).cast<String, dynamic>()),
      bearerTokenConfig: map['bearerTokenConfig'] == null
          ? null
          : CxToolOpenApiSpecAuthenticationBearerTokenConfig.fromMap(
              (map['bearerTokenConfig'] as Map).cast<String, dynamic>()),
      oauthConfig: map['oauthConfig'] == null
          ? null
          : CxToolOpenApiSpecAuthenticationOauthConfig.fromMap(
              (map['oauthConfig'] as Map).cast<String, dynamic>()),
      serviceAgentAuthConfig: map['serviceAgentAuthConfig'] == null
          ? null
          : CxToolOpenApiSpecAuthenticationServiceAgentAuthConfig.fromMap(
              (map['serviceAgentAuthConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
