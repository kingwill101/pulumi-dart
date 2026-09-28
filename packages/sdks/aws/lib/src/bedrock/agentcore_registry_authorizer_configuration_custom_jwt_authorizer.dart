// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_registry_authorizer_configuration_custom_jwt_authorizer_allowed_workload_configuration.dart';
import 'agentcore_registry_authorizer_configuration_custom_jwt_authorizer_custom_claim.dart';
import 'agentcore_registry_authorizer_configuration_custom_jwt_authorizer_private_endpoint.dart';
import 'agentcore_registry_authorizer_configuration_custom_jwt_authorizer_private_endpoint_override.dart';

class AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizer {
  /// Set of allowed audience values for JWT token validation.
  final pulumi.Input<List<String>?>? allowedAudiences;
  /// Set of allowed client IDs for JWT token validation.
  final pulumi.Input<List<String>?>? allowedClients;
  /// Set of scopes that are allowed to access the token.
  final pulumi.Input<List<String>?>? allowedScopes;
  /// Configuration restricting which workloads may use this authorizer. See `allowedWorkloadConfiguration` below.
  final pulumi.Input<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration?>? allowedWorkloadConfiguration;
  /// Repeatable block to define a custom claim validation name, value, and operation. See `customClaim` below.
  final pulumi.Input<List<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerCustomClaim>?>? customClaims;
  /// URL used to fetch OpenID Connect configuration or authorization server metadata. Must end with `.well-known/openid-configuration`.
  final pulumi.Input<String> discoveryUrl;
  /// Private endpoint used to reach the authorization server. See `privateEndpoint` below.
  final pulumi.Input<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint?>? privateEndpoint;
  /// Overrides for the private endpoints used to reach the authorization server. See `privateEndpointOverrides` below.
  final pulumi.Input<List<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride>?>? privateEndpointOverrides;

  /// Creates a new [AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizer].
  /// [allowedAudiences] Set of allowed audience values for JWT token validation.
  /// [allowedClients] Set of allowed client IDs for JWT token validation.
  /// [allowedScopes] Set of scopes that are allowed to access the token.
  /// [allowedWorkloadConfiguration] Configuration restricting which workloads may use this authorizer. See `allowedWorkloadConfiguration` below.
  /// [customClaims] Repeatable block to define a custom claim validation name, value, and operation. See `customClaim` below.
  /// [discoveryUrl] URL used to fetch OpenID Connect configuration or authorization server metadata. Must end with `.well-known/openid-configuration`.
  /// [privateEndpoint] Private endpoint used to reach the authorization server. See `privateEndpoint` below.
  /// [privateEndpointOverrides] Overrides for the private endpoints used to reach the authorization server. See `privateEndpointOverrides` below.
  const AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizer({
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
      'allowedWorkloadConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration, Map<String, dynamic>>(allowedWorkloadConfiguration, (value) => value.toMap()),
      'customClaims': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerCustomClaim>, List<Map<String, dynamic>>>(customClaims, (value) => pulumi.Input.encodeList<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerCustomClaim, Map<String, dynamic>>(value, (value) => value.toMap())),
      'discoveryUrl': discoveryUrl,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateEndpointOverrides': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride>, List<Map<String, dynamic>>>(privateEndpointOverrides, (value) => pulumi.Input.encodeList<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizer.fromMap(Map<String, dynamic> map) {
    return AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizer(
      allowedAudiences: (() { final guardedValue = map['allowedAudiences']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedClients: (() { final guardedValue = map['allowedClients']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedScopes: (() { final guardedValue = map['allowedScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedWorkloadConfiguration: (() { final guardedValue = map['allowedWorkloadConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerAllowedWorkloadConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customClaims: (() { final guardedValue = map['customClaims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerCustomClaim>(guardedValue, (value) => AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerCustomClaim.fromMap((value as Map).cast<String, dynamic>()))); })(),
      discoveryUrl: pulumi.Input.fromValue(map['discoveryUrl'] as String),
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateEndpointOverrides: (() { final guardedValue = map['privateEndpointOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride>(guardedValue, (value) => AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
