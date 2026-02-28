// ignore_for_file: unused_element, unnecessary_cast

import 'agentcore_gateway_target_credential_provider_configuration_api_key.dart';
import 'agentcore_gateway_target_credential_provider_configuration_oauth.dart';

class AgentcoreGatewayTargetCredentialProviderConfiguration {
  /// API key-based authentication configuration. See `api_key` below.
  final AgentcoreGatewayTargetCredentialProviderConfigurationApiKey? apiKey;
  /// Use the gateway's IAM role for authentication. This is an empty configuration block.
  final Map<String, dynamic>? gatewayIamRole;
  /// OAuth-based authentication configuration. See `oauth` below.
  final AgentcoreGatewayTargetCredentialProviderConfigurationOauth? oauth;

  /// Creates a new [AgentcoreGatewayTargetCredentialProviderConfiguration].
  /// [apiKey] API key-based authentication configuration. See `api_key` below.
  /// [gatewayIamRole] Use the gateway's IAM role for authentication. This is an empty configuration block.
  /// [oauth] OAuth-based authentication configuration. See `oauth` below.
  AgentcoreGatewayTargetCredentialProviderConfiguration({
    this.apiKey,
    this.gatewayIamRole,
    this.oauth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey == null ? null : apiKey!.toMap(),
      'gatewayIamRole': ?gatewayIamRole,
      'oauth': ?oauth == null ? null : oauth!.toMap(),
    };
  }

  factory AgentcoreGatewayTargetCredentialProviderConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetCredentialProviderConfiguration(
      apiKey: map['apiKey'] == null ? null : AgentcoreGatewayTargetCredentialProviderConfigurationApiKey.fromMap((map['apiKey'] as Map).cast<String, dynamic>()),
      gatewayIamRole: map['gatewayIamRole'] == null ? null : (map['gatewayIamRole'] as Map).cast<String, dynamic>(),
      oauth: map['oauth'] == null ? null : AgentcoreGatewayTargetCredentialProviderConfigurationOauth.fromMap((map['oauth'] as Map).cast<String, dynamic>()),
    );
  }
}

