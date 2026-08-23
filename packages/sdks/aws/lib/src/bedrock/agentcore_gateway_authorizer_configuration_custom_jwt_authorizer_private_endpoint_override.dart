// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_authorizer_configuration_custom_jwt_authorizer_private_endpoint_override_private_endpoint.dart';

class AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride {
  /// Domain the override applies to.
  final pulumi.Input<String> domain;
  /// Private endpoint configuration. See `privateEndpoint` below.
  final pulumi.Input<AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint> privateEndpoint;

  /// Creates a new [AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride].
  /// [domain] Domain the override applies to.
  /// [privateEndpoint] Private endpoint configuration. See `privateEndpoint` below.
  const AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride({
    required this.domain,
    required this.privateEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'privateEndpoint': pulumi.Input.mapInputValue<AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride(
      domain: pulumi.Input.fromValue(map['domain'] as String),
      privateEndpoint: pulumi.Input.fromValue(AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint.fromMap((map['privateEndpoint']! as Map).cast<String, dynamic>())),
    );
  }
}
