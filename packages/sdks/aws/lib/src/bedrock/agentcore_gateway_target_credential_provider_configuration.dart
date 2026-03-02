// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_credential_provider_configuration_api_key.dart';
import 'agentcore_gateway_target_credential_provider_configuration_oauth.dart';

class AgentcoreGatewayTargetCredentialProviderConfiguration {
  /// API key-based authentication configuration. See `api_key` below.
  final pulumi.Input<AgentcoreGatewayTargetCredentialProviderConfigurationApiKey>? apiKey;
  /// Use the gateway's IAM role for authentication. This is an empty configuration block.
  final pulumi.Input<Map<String, dynamic>>? gatewayIamRole;
  /// OAuth-based authentication configuration. See `oauth` below.
  final pulumi.Input<AgentcoreGatewayTargetCredentialProviderConfigurationOauth>? oauth;

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
      'apiKey': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetCredentialProviderConfigurationApiKey, Map<String, dynamic>>(apiKey, (value) => value.toMap()),
      'gatewayIamRole': ?gatewayIamRole,
      'oauth': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetCredentialProviderConfigurationOauth, Map<String, dynamic>>(oauth, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetCredentialProviderConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetCredentialProviderConfiguration(
      apiKey: map['apiKey'] == null ? null : (AgentcoreGatewayTargetCredentialProviderConfigurationApiKey.fromMap((map['apiKey'] as Map).cast<String, dynamic>())).input(),
      gatewayIamRole: map['gatewayIamRole'] == null ? null : ((map['gatewayIamRole'] as Map).cast<String, dynamic>()).input(),
      oauth: map['oauth'] == null ? null : (AgentcoreGatewayTargetCredentialProviderConfigurationOauth.fromMap((map['oauth'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

