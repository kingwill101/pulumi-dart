// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_authorizer_configuration_custom_jwt_authorizer_private_endpoint_override_private_endpoint.dart';

class AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride {
  /// Domain the override applies to.
  final pulumi.Input<String> domain;
  /// Private endpoint configuration. See `privateEndpoint` Block below.
  final pulumi.Input<AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint> privateEndpoint;

  /// Creates a new [AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride].
  /// [domain] Domain the override applies to.
  /// [privateEndpoint] Private endpoint configuration. See `privateEndpoint` Block below.
  const AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride({
    required this.domain,
    required this.privateEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'privateEndpoint': pulumi.Input.mapInputValue<AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
    };
  }

  factory AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride(
      domain: pulumi.Input.fromValue(map['domain'] as String),
      privateEndpoint: pulumi.Input.fromValue(AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint.fromMap((map['privateEndpoint']! as Map).cast<String, dynamic>())),
    );
  }
}
