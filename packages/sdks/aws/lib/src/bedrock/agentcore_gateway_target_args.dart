// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_target_credential_provider_configuration.dart';
import 'agentcore_gateway_target_target_configuration.dart';
import 'agentcore_gateway_target_timeouts.dart';

/// {@template pulumi_bedrock_agentcore_gateway_target_agentcore_gateway_target_args_doc}
/// The set of arguments for AgentcoreGatewayTarget.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agentcore_gateway_target_agentcore_gateway_target_args_doc}
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

  /// Creates a new [AgentcoreGatewayTargetArgs].
  /// [credentialProviderConfiguration] Configuration for authenticating requests to the target. Required when using `lambda`, `open_api_schema` and `smithy_model` in `mcp` block. If using `mcp_server` in `mcp` block with no authorization, it should not be specified. See `credential_provider_configuration` below.
  /// [description] Description of the gateway target.
  /// [gatewayIdentifier] Identifier of the gateway that this target belongs to.
  /// [name] Name of the gateway target.
  /// [region] AWS region where the resource will be created. If not provided, the region from the provider configuration will be used.
  /// [targetConfiguration] Configuration for the target endpoint. See `target_configuration` below.
  /// [timeouts] Optional.
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
    return <String, dynamic>{
      'credentialProviderConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            AgentcoreGatewayTargetCredentialProviderConfiguration,
            Map<String, dynamic>
          >(credentialProviderConfiguration, (value) => value.toMap()),
      'description': ?description,
      'gatewayIdentifier': gatewayIdentifier,
      'name': ?name,
      'region': ?region,
      'targetConfiguration':
          pulumi.Input.mapInputValue<
            AgentcoreGatewayTargetTargetConfiguration,
            Map<String, dynamic>
          >(targetConfiguration, (value) => value.toMap()),
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            AgentcoreGatewayTargetTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayTargetArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetArgs(
      credentialProviderConfiguration: (() {
        final guardedValue = map['credentialProviderConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AgentcoreGatewayTargetCredentialProviderConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gatewayIdentifier: pulumi.Input.fromValue(
        map['gatewayIdentifier'] as String,
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetConfiguration: pulumi.Input.fromValue(
        AgentcoreGatewayTargetTargetConfiguration.fromMap(
          (map['targetConfiguration']! as Map).cast<String, dynamic>(),
        ),
      ),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AgentcoreGatewayTargetTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
