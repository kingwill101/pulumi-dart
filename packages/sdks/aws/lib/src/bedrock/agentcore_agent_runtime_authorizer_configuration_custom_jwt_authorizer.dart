// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_agent_runtime_authorizer_configuration_custom_jwt_authorizer_allowed_workload_configuration.dart';
import 'agentcore_agent_runtime_authorizer_configuration_custom_jwt_authorizer_custom_claim.dart';
import 'agentcore_agent_runtime_authorizer_configuration_custom_jwt_authorizer_private_endpoint.dart';
import 'agentcore_agent_runtime_authorizer_configuration_custom_jwt_authorizer_private_endpoint_override.dart';

class AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizer {
  /// Set of allowed audience values for JWT token validation.
  final pulumi.Input<List<String>?>? allowedAudiences;
  /// Set of allowed client IDs for JWT token validation.
  final pulumi.Input<List<String>?>? allowedClients;
  /// Set of scopes that are allowed to access the token.
  final pulumi.Input<List<String>?>? allowedScopes;
  /// Configuration restricting which workloads may use this authorizer. See `allowedWorkloadConfiguration` below.
  final pulumi.Input<AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration?>? allowedWorkloadConfiguration;
  /// Repeatable block to define a custom claim validation name, value, and operation. See `customClaim` below.
  final pulumi.Input<List<AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerCustomClaim>?>? customClaims;
  /// URL used to fetch OpenID Connect configuration or authorization server metadata. Must end with `.well-known/openid-configuration`.
  final pulumi.Input<String> discoveryUrl;
  /// Private endpoint used to reach the authorization server. See `privateEndpoint` below.
  final pulumi.Input<AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint?>? privateEndpoint;
  /// Overrides for the private endpoints used to reach the authorization server. See `privateEndpointOverrides` below.
  final pulumi.Input<List<AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride>?>? privateEndpointOverrides;

  /// Creates a new [AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizer].
  /// [allowedAudiences] Set of allowed audience values for JWT token validation.
  /// [allowedClients] Set of allowed client IDs for JWT token validation.
  /// [allowedScopes] Set of scopes that are allowed to access the token.
  /// [allowedWorkloadConfiguration] Configuration restricting which workloads may use this authorizer. See `allowedWorkloadConfiguration` below.
  /// [customClaims] Repeatable block to define a custom claim validation name, value, and operation. See `customClaim` below.
  /// [discoveryUrl] URL used to fetch OpenID Connect configuration or authorization server metadata. Must end with `.well-known/openid-configuration`.
  /// [privateEndpoint] Private endpoint used to reach the authorization server. See `privateEndpoint` below.
  /// [privateEndpointOverrides] Overrides for the private endpoints used to reach the authorization server. See `privateEndpointOverrides` below.
  const AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizer({
    this.allowedAudiences,
    this.allowedClients,
    this.allowedScopes,
    this.allowedWorkloadConfiguration,
    this.customClaims,
    required this.discoveryUrl,
    this.privateEndpoint,
    this.privateEndpointOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAudiences': ?allowedAudiences,
      'allowedClients': ?allowedClients,
      'allowedScopes': ?allowedScopes,
      'allowedWorkloadConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration, Map<String, dynamic>>(allowedWorkloadConfiguration, (value) => value.toMap()),
      'customClaims': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerCustomClaim>, List<Map<String, dynamic>>>(customClaims, (value) => pulumi.Input.encodeList<AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerCustomClaim, Map<String, dynamic>>(value, (value) => value.toMap())),
      'discoveryUrl': discoveryUrl,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateEndpointOverrides': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride>, List<Map<String, dynamic>>>(privateEndpointOverrides, (value) => pulumi.Input.encodeList<AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizer.fromMap(Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizer(
      allowedAudiences: (() { final guardedValue = map['allowedAudiences']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedClients: (() { final guardedValue = map['allowedClients']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedScopes: (() { final guardedValue = map['allowedScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedWorkloadConfiguration: (() { final guardedValue = map['allowedWorkloadConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customClaims: (() { final guardedValue = map['customClaims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerCustomClaim>(guardedValue, (value) => AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerCustomClaim.fromMap((value as Map).cast<String, dynamic>()))); })(),
      discoveryUrl: pulumi.Input.fromValue(map['discoveryUrl'] as String),
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateEndpointOverrides: (() { final guardedValue = map['privateEndpointOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride>(guardedValue, (value) => AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
