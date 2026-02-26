// ignore_for_file: unused_element, unnecessary_cast

import '../agentcore_gateway_target_credential_provider_configuration_api_key/agentcore_gateway_target_credential_provider_configuration_api_key.dart';
import '../agentcore_gateway_target_credential_provider_configuration_oauth/agentcore_gateway_target_credential_provider_configuration_oauth.dart';

class AgentcoreGatewayTargetCredentialProviderConfiguration {
  /// API key-based authentication configuration. See <span pulumi-lang-nodejs="`apiKey`" pulumi-lang-dotnet="`ApiKey`" pulumi-lang-go="`apiKey`" pulumi-lang-python="`api_key`" pulumi-lang-yaml="`apiKey`" pulumi-lang-java="`apiKey`">`api_key`</span> below.
  final AgentcoreGatewayTargetCredentialProviderConfigurationApiKey? apiKey;

  /// Use the gateway's IAM role for authentication. This is an empty configuration block.
  final Map<String, dynamic>? gatewayIamRole;

  /// OAuth-based authentication configuration. See <span pulumi-lang-nodejs="`oauth`" pulumi-lang-dotnet="`Oauth`" pulumi-lang-go="`oauth`" pulumi-lang-python="`oauth`" pulumi-lang-yaml="`oauth`" pulumi-lang-java="`oauth`">`oauth`</span> below.
  final AgentcoreGatewayTargetCredentialProviderConfigurationOauth? oauth;

  AgentcoreGatewayTargetCredentialProviderConfiguration({
    this.apiKey,
    this.gatewayIamRole,
    this.oauth,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiKeyValue = apiKey;
    if (apiKeyValue != null) {
      map['apiKey'] = apiKeyValue.toMap();
    }
    final gatewayIamRoleValue = gatewayIamRole;
    if (gatewayIamRoleValue != null) {
      map['gatewayIamRole'] = gatewayIamRoleValue;
    }
    final oauthValue = oauth;
    if (oauthValue != null) {
      map['oauth'] = oauthValue.toMap();
    }
    return map;
  }

  factory AgentcoreGatewayTargetCredentialProviderConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayTargetCredentialProviderConfiguration(
      apiKey: map['apiKey'] == null
          ? null
          : AgentcoreGatewayTargetCredentialProviderConfigurationApiKey.fromMap(
              (map['apiKey'] as Map).cast<String, dynamic>()),
      gatewayIamRole: map['gatewayIamRole'] == null
          ? null
          : (map['gatewayIamRole'] as Map).cast<String, dynamic>(),
      oauth: map['oauth'] == null
          ? null
          : AgentcoreGatewayTargetCredentialProviderConfigurationOauth.fromMap(
              (map['oauth'] as Map).cast<String, dynamic>()),
    );
  }
}
