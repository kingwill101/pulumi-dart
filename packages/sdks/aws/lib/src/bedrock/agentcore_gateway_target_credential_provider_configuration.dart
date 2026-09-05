// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_credential_provider_configuration_api_key.dart';
import 'agentcore_gateway_target_credential_provider_configuration_caller_iam_credentials.dart';
import 'agentcore_gateway_target_credential_provider_configuration_gateway_iam_role.dart';
import 'agentcore_gateway_target_credential_provider_configuration_oauth.dart';

class AgentcoreGatewayTargetCredentialProviderConfiguration {
  /// API key-based authentication configuration. See `apiKey` below.
  final pulumi.Input<AgentcoreGatewayTargetCredentialProviderConfigurationApiKey?>? apiKey;
  /// Caller IAM credentials-based authentication configuration. See `callerIamCredentials` below.
  final pulumi.Input<AgentcoreGatewayTargetCredentialProviderConfigurationCallerIamCredentials?>? callerIamCredentials;
  /// Use the gateway's IAM role for authentication. See `gatewayIamRole` below.
  final pulumi.Input<AgentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRole?>? gatewayIamRole;
  /// JWT passthrough-based authentication configuration. This is an empty configuration block.
  final pulumi.Input<Map<String, dynamic>?>? jwtPassthrough;
  /// OAuth-based authentication configuration. See `oauth` below.
  final pulumi.Input<AgentcoreGatewayTargetCredentialProviderConfigurationOauth?>? oauth;

  /// Creates a new [AgentcoreGatewayTargetCredentialProviderConfiguration].
  /// [apiKey] API key-based authentication configuration. See `apiKey` below.
  /// [callerIamCredentials] Caller IAM credentials-based authentication configuration. See `callerIamCredentials` below.
  /// [gatewayIamRole] Use the gateway's IAM role for authentication. See `gatewayIamRole` below.
  /// [jwtPassthrough] JWT passthrough-based authentication configuration. This is an empty configuration block.
  /// [oauth] OAuth-based authentication configuration. See `oauth` below.
  const AgentcoreGatewayTargetCredentialProviderConfiguration({
    this.apiKey,
    this.callerIamCredentials,
    this.gatewayIamRole,
    this.jwtPassthrough,
    this.oauth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetCredentialProviderConfigurationApiKey, Map<String, dynamic>>(apiKey, (value) => value.toMap()),
      'callerIamCredentials': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetCredentialProviderConfigurationCallerIamCredentials, Map<String, dynamic>>(callerIamCredentials, (value) => value.toMap()),
      'gatewayIamRole': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRole, Map<String, dynamic>>(gatewayIamRole, (value) => value.toMap()),
      'jwtPassthrough': ?jwtPassthrough,
      'oauth': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayTargetCredentialProviderConfigurationOauth, Map<String, dynamic>>(oauth, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetCredentialProviderConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetCredentialProviderConfiguration(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetCredentialProviderConfigurationApiKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      callerIamCredentials: (() { final guardedValue = map['callerIamCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetCredentialProviderConfigurationCallerIamCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gatewayIamRole: (() { final guardedValue = map['gatewayIamRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetCredentialProviderConfigurationGatewayIamRole.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jwtPassthrough: (() { final guardedValue = map['jwtPassthrough']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      oauth: (() { final guardedValue = map['oauth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreGatewayTargetCredentialProviderConfigurationOauth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
