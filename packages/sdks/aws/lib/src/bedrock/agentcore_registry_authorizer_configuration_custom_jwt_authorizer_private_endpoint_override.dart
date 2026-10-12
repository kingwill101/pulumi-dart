// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_registry_authorizer_configuration_custom_jwt_authorizer_private_endpoint_override_private_endpoint.dart';

class AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride {
  /// Domain the override applies to.
  final pulumi.Input<String> domain;
  /// Private endpoint configuration. See `privateEndpoint` below.
  final pulumi.Input<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint> privateEndpoint;

  /// Creates a new [AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride].
  /// [domain] Domain the override applies to.
  /// [privateEndpoint] Private endpoint configuration. See `privateEndpoint` below.
  const AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride({
    required this.domain,
    required this.privateEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'privateEndpoint': pulumi.Input.mapInputValue<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
    };
  }

  factory AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride.fromMap(Map<String, dynamic> map) {
    return AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride(
      domain: pulumi.Input.fromValue(map['domain'] as String),
      privateEndpoint: pulumi.Input.fromValue(AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint.fromMap((map['privateEndpoint']! as Map).cast<String, dynamic>())),
    );
  }
}
