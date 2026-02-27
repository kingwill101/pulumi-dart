// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../agentcore_gateway_target_credential_provider_configuration/agentcore_gateway_target_credential_provider_configuration.dart';
import '../agentcore_gateway_target_target_configuration/agentcore_gateway_target_target_configuration.dart';
import '../agentcore_gateway_target_timeouts/agentcore_gateway_target_timeouts.dart';

/// The set of arguments for AgentcoreGatewayTarget.
class AgentcoreGatewayTargetArgs {
  /// Configuration for authenticating requests to the target. Required when using `lambda`, `open_api_schema` and `smithy_model` in `mcp` block. If using `mcp_server` in `mcp` block with no authorization, it should not be specified. See `credential_provider_configuration` below.
  final pulumi.Input<AgentcoreGatewayTargetCredentialProviderConfiguration>?
      credentialProviderConfiguration;

  /// Description of the gateway target.
  final pulumi.Input<String>? description;

  /// Identifier of the gateway that this target belongs to.
  final pulumi.Input<String> gatewayIdentifier;

  /// Name of the gateway target.
  final pulumi.Input<String>? name;

  /// AWS region where the resource will be created. If not provided, the region from the provider configuration will be used.
  final pulumi.Input<String>? region;

  /// Configuration for the target endpoint. See `target_configuration` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AgentcoreGatewayTargetTargetConfiguration>
      targetConfiguration;
  final pulumi.Input<AgentcoreGatewayTargetTimeouts>? timeouts;

  AgentcoreGatewayTargetArgs({
    this.credentialProviderConfiguration,
    this.description,
    required this.gatewayIdentifier,
    this.name,
    this.region,
    required this.targetConfiguration,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final credentialProviderConfigurationValue =
        credentialProviderConfiguration;
    if (credentialProviderConfigurationValue != null) {
      map['credentialProviderConfiguration'] =
          pulumi.Input.mapOptionalInputValue<
                  AgentcoreGatewayTargetCredentialProviderConfiguration,
                  Map<String, dynamic>>(
              credentialProviderConfigurationValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['gatewayIdentifier'] = gatewayIdentifier;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['targetConfiguration'] = pulumi.Input.mapInputValue<
        AgentcoreGatewayTargetTargetConfiguration,
        Map<String, dynamic>>(targetConfiguration, (value) => value.toMap());
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          AgentcoreGatewayTargetTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentcoreGatewayTargetArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetArgs(
      credentialProviderConfiguration: pulumi.Input.asOptionalInput<
              AgentcoreGatewayTargetCredentialProviderConfiguration>(
          map['credentialProviderConfiguration']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      gatewayIdentifier: pulumi.Input.asInput<String>(map['gatewayIdentifier']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      targetConfiguration:
          pulumi.Input.asInput<AgentcoreGatewayTargetTargetConfiguration>(
              map['targetConfiguration']),
      timeouts: pulumi.Input.asOptionalInput<AgentcoreGatewayTargetTimeouts>(
          map['timeouts']),
    );
  }
}
